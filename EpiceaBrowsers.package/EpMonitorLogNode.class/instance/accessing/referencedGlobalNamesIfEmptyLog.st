referencedGlobalNamesIfEmptyLog

	^ headReference isNull
		ifTrue: [ #() ] 
		ifFalse: [ { headReference globalName } ]