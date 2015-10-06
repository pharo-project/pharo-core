iconNamed: aSymbol ifNone: aBlock
	self icons at: aSymbol ifPresent: [ :icon | ^ icon ].
	"Trying the old way"
	(aSymbol endsWith: 'Icon') 
		ifTrue: [ self icons at: (aSymbol allButLast: 4) ifPresent: [ :icon | ^ icon ] ].
	(aSymbol endsWith: 'Form') 
		ifTrue: [ self icons at: (aSymbol allButLast: 4) ifPresent: [ :icon | ^ icon ] ].
	^ aBlock value