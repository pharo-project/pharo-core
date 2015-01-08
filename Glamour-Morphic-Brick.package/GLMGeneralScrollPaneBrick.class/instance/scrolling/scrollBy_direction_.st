scrollBy: anInteger direction: aSymbol

	aSymbol = #up ifTrue: [ self scrollUp: anInteger ].
	aSymbol = #down ifTrue: [ self scrollDown: anInteger ].
	
	scrollPosition := band brickBounds top.
	
	self update.
	self changed