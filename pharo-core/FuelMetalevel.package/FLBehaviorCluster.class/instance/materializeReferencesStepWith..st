serialize/materialize
materializeReferencesStepWith: aDecoder

	objects do:	[ :aClassOrTrait | self materializeReferencesOf: aClassOrTrait with: aDecoder ]