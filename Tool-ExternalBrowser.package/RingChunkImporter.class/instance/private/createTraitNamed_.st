createTraitNamed: traitName

	| trait |
	trait := RGTraitDefinition named: traitName.
	package addTrait: trait.
	^ trait.