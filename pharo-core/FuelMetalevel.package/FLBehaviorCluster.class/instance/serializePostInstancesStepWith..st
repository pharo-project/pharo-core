serialize/materialize
serializePostInstancesStepWith: anEncoder  

	objects do:	[ :aClassOrTrait | self serializePostInstance: aClassOrTrait with: anEncoder ]