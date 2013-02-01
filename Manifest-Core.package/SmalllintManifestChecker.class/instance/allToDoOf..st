manifest
allToDoOf: aRule
	
	|rId rV bm|

	rId := aRule class uniqueIdentifierName.
	rV := aRule class identifierMinorVersionNumber.
	
	bm := BuilderManifest new.

	^ BuilderManifest allManifestClasses gather: [:mc |
		bm manifestClass: mc.
		(bm hasToDoOf: rId version: rV)
			ifTrue: [bm toDoOf: rId version: rV]
			ifFalse: [{}]] 
	