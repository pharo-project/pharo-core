accessing
manifestBuilderOfPackage: aPackage
	| key |
	key := aPackage packageName.
	^ manifestClassCache
		at: key
		ifAbsentPut: [ 
			(BuilderManifest hasPackageNamed: key)
				ifTrue: [ BuilderManifest ofPackageNamed: key ]
				ifFalse: [ nil ] ]