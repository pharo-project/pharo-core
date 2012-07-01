diffs
showingRegularDiffsString
	"Answer a string representing whether I'm showing regular diffs"

	^ (self showingRegularDiffs
		ifTrue:
			['<yes>']
		ifFalse:
			['<no>']), 'showDiffs'