handler selection
isResponsibleFor: aCommandLine
	"This handler is reponsible only for .fuel files"
	(aCommandLine hasFileWithExtension: '.fuel')
		ifTrue: [ ^ true ].
	^ super isResponsibleFor: aCommandLine