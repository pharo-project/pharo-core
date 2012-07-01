diffs
showingPrettyDiffsString
	"Answer a string representing whether I'm showing pretty diffs"

	^ (self showingPrettyDiffs
		ifTrue:
			['<yes>']
		ifFalse:
			['<no>']), 'prettyDiffs'