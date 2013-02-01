manifest
allFalsePositiveOf: aRule
	
	|rId rV bm|

	(allFalsePositiveCache includesKey: aRule) ifFalse: [
		 
		rId := aRule class uniqueIdentifierName.
		rV := aRule class identifierMinorVersionNumber.
	
		bm := BuilderManifest new.

		allFalsePositiveCache at: aRule put:  
			(BuilderManifest allManifestClasses gather: [:mc |
				bm manifestClass: mc.
				(bm hasFalsePositiveOf: rId version: rV)
					ifTrue: [bm falsePositiveOf: rId version: rV]
					ifFalse: [{}]]) 
	].
	
	^ allFalsePositiveCache at: aRule	