serialize/materialize
afterMaterializationStepWith: aDecoder

	objects do:	[ :aClassOrTrait | 
		aClassOrTrait fuelInitializeTraitComposition.
		aClassOrTrait fuelAfterMaterialization ]