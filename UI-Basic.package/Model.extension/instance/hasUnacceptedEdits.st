*UI-Basic-edits
hasUnacceptedEdits
	"Answer true if any of the views on this model has unaccepted edits."

	dependents == nil ifTrue: [^ false].
	^ super hasUnacceptedEdits
