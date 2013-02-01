manifest
allTruePositiveOf: aRule
	"true positive and todo"
	|rId rV bm tmp|

	(allTruePositiveCache includesKey: aRule) ifFalse: [
		 
		rId := aRule class uniqueIdentifierName.
		rV := aRule class identifierMinorVersionNumber.
	
		bm := BuilderManifest new.

	tmp :=
			(BuilderManifest allManifestClasses gather: [:mc |
				bm manifestClass: mc.
				(bm hasTruePositiveOf: rId version: rV)
					ifTrue: [bm truePositiveOf: rId version: rV]
					ifFalse: [{}]]) asOrderedCollection . 
		tmp addAll: (self allToDoOf: aRule).
		
		allTruePositiveCache at: aRule put: tmp.
	].
	
	^ allTruePositiveCache at: aRule	
	