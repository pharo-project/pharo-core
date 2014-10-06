stylerStyled: styledCopyOfText
	next ifNil: [ ^self ].
	text runs: styledCopyOfText runs.
	"The selection and then the cursor bounds has to be updated 
	to take possible text attribute changes into account"
	self textArea recomputeSelection.
	self textArea cursor updateBounds.
	""
	(self textArea scrollPane ifNil: [ self textArea ]) changed.