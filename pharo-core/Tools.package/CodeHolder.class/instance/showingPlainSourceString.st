what to show
showingPlainSourceString
	"Answer a string telling whether the receiver is showing plain source"

	^ (self showingPlainSource
		ifTrue:
			['<yes>']
		ifFalse:
			['<no>']), 'source'