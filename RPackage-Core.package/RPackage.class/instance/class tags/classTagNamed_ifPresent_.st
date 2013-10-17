classTagNamed: aSymbol ifPresent: aBlock 
	^ (classTags 
		detect: [ :each | each name = aSymbol ]
		ifNone: [ nil ])
		ifNotNil: [ :tag | aBlock cull: tag ]