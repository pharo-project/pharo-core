accessing
manifestBuilderOfClass: aClass
	| key |
	key := aClass theNonMetaClass category.
	^ manifestClassCache
		at: key
		ifAbsentPut: [ 
			(BuilderManifest hasManifestFor: aClass)
				ifTrue: [ BuilderManifest of: aClass ]
				ifFalse: [ nil ] ]