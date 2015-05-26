testSelectedText
	| presentation |
	presentation := GLMTextPresentation new.
	self assert: presentation selectedText equals: ''.
	presentation selectedTextBlock: [ 'selection' ].
	self assert: presentation selectedText equals: 'selection'