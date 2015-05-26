package: aRPackage matchPackagePattern: aPattern 
	^ aPattern
		ifNil: [ true ]
		ifNotNil: [ :pattern | pattern search: aRPackage name ]