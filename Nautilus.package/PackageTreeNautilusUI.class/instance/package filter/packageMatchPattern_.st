packageMatchPattern: aRPackage 
	
	^ self packagePattern 
		ifNil: [ true ]
		ifNotNil: [ :pattern | pattern search: aRPackage name ]