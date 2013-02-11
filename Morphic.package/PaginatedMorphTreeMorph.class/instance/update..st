updating
update: aSymbol
	aSymbol == #pageSize
		ifTrue: [ ^ self pageSize: model pageSize ].
	aSymbol == #chunkSize
		ifTrue: [ ^ self chunkSize: model chunkSize ].
	((aSymbol isKindOf: Array)
		and: [ aSymbol size > 1 and: [ aSymbol first == self nodeListSelector and: [ aSymbol second == #openItemPath ] ] ])
		ifTrue: [ 
			| rest |
			rest := aSymbol allButFirst: 2.
			[ rest notEmpty ]
				whileTrue: [ 
					| i res |
					res := (1 to: self nodeList size) select: [ :li | (self nodeList at: li) item = rest first ].
					res isEmpty
						ifTrue: [ ^ self ].
					self pager nextPage: res first.
					(self allNodeMorphs at: 1 ifAbsent: [ ^ self ]) openItemPath: {(rest first)}.
					rest := rest copyWithoutFirst ].
			^ self ].	"allow directed path opening where multiple trees exist"
	^ super update: aSymbol