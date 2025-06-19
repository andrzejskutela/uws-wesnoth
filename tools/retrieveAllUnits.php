<?php

class UnitRetriever {
	protected array $locations = [
		'/usr/share/wesnoth/data/core/units',
		'~/.local/share/wesnoth/1.18/data/add-ons/Ageless_Era/units',
		'~/.local/share/wesnoth/1.18/data/add-ons/Reign_of_the_Lords/units',
		'~/.local/share/wesnoth/1.18/data/add-ons/WarOfTheGods/units',
		'~/.local/share/wesnoth/1.18/data/add-ons/QQ_Ultimate_Wesnoth_Survival/units',
	];

	protected array $extractFields = [
		'id', 'level', 'movement', 'movement_type', 'hitpoints',
	];

	protected array $rejectMovementTypes = [
		'float', 'AE_mrc_refugees_refugeeboat', 'AE_ele_vikiboat', 'vikiboat'
	];

	public function findAllUnits(?string $outputFile) {
		$levels = [];
		for ($i = 0; $i <= 7; $i++) {
			$levels[$i] = [];
		}

		foreach ($this->locations as $location) {
			if ($location[0] === '~') {
				$location = str_replace('~', getenv("HOME"), $location);
			}

			$unitsFound = 0;
			foreach ($this->getAllCfgFiles($location) as $path) {
				$content = file_get_contents($path);
				$data = $this->loadRelevantData($content, $path);

				if (!empty($data)) {
					$this->debugIf($data);
					if ($this->acceptUnit($data)) {
						$unitsFound++;
						$levels[$data['level']][] = $data['id'];
					}
				}
			}

			echo "Path: $location = units found: $unitsFound\n";
		}

		echo PHP_EOL;
		$fileContent = '';
		foreach ($levels as $k => $v) {
			echo "Level $k = " . count($v) . " units\n";
			$fileContent .= "Level $k:\n\n" . implode(',', $v) . PHP_EOL . PHP_EOL;
		}

		if ($outputFile) {
			file_put_contents($outputFile, $fileContent);
		} else {
			echo $fileContent;
		}
	}

	protected function debugIf(array $data) {
		return ;

		if ($data['hitpoints'] < 10) {
			echo json_encode($data) . PHP_EOL;
		}
	}

	protected function acceptUnit(array $data) : bool {
		if ($data['id']
		 && $data['attacks'] > 0
		 && $data['movement'] >= 3
		 && !in_array($data['movement_type'], $this->rejectMovementTypes)
		 && $data['level'] >= 0
		 && $data['level'] <= 7
		 && $data['hitpoints'] > 9) {
			return true;
		}

		return false;
	}

	protected function loadRelevantData(string $content, string $path) : array {
		$lines = explode("\n", $content);
		$final = [];
		$noOfAttacks = 0;
		$isUnitDefinition = false;
		foreach ($lines as $line) {
			if (preg_match("/^\s*#define\s/i", $line) {
				return [];
			}
			
			if (preg_match("/^\s*#/", $line)) {
				continue;
			}

			$line = trim($line);
			preg_match("/^\[(?<tag>\/?\w+)\]$/", $line, $matches);
			$tag = $matches['tag'] ?? null;

			if ($tag) {
				if ($tag === 'unit_type') {
					$isUnitDefinition = true;
				} elseif ($tag[0] === '/unit_type') {
					$isUnitDefinition = false;
				}  elseif ($tag[0] === '/') {
					$isUnitDefinition = true;
				} else {
					$isUnitDefinition = false;

					if ($tag === 'attack') {
						$noOfAttacks++;
					}

					if ($tag === 'base_unit') {
						return [];
					}
				}
			}

			if ($isUnitDefinition) {
				[$field, $value] = $this->extract($line);
				if ($field) {
					$final[$field] = $value;
				}
			}
		}

		if (count($final) === count($this->extractFields)) {
			$final['attacks'] = $noOfAttacks;
			$final['path'] = basename($path);

			return $final;
		}

		return [];
	}

	protected function extract(string $line) {
		if (preg_match("/^(?<field>\w+)=(?<value>[\w ]+)$/", $line, $matches)) {
			$field = $matches['field'];

			if (in_array($field, $this->extractFields)) {
				$value = trim($matches['value'], ' _"');
				return [$field, $value];
			}
		}

		return [null, null];
	}

	protected function getAllCfgFiles(string $location) {
		$items = scandir($location);
		foreach ($items as $item) {
			if ($item === '.' || $item === '..') {
				continue;
			}

			$path = $location . '/' . $item;
			if (is_dir($path)) {
				yield from $this->getAllCfgFiles($path);
			} elseif (preg_match("/\.cfg$/", $path)) {
				yield $path;
			}
		}
	}
}

$ur = new UnitRetriever();
$ur->findAllUnits($argv[1] ?? null);
