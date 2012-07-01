serialize/materialize
materializePostInstancesStepWith: aDecoder

	objects do:	[ :aClassOrTrait | self materializePostInstance: aClassOrTrait with: aDecoder ]