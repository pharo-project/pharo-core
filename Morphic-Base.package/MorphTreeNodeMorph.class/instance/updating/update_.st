update: aSymbol

	aSymbol = #select
		ifTrue: [ ^ self selected: true ].
		
	aSymbol = #deselect
		ifTrue: [ ^ self selected: false ].

	super update: aSymbol