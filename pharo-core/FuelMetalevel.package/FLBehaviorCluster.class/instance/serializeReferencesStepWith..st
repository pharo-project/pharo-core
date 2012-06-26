serialize/materialize
serializeReferencesStepWith: anEncoder

	objects do:	[ :aClassOrTrait | self serializeReferencesOf: aClassOrTrait with: anEncoder ]