*UI-Basic-edits
hasUnacceptedEdits
	"Answer true if any of the views on this model has unaccepted edits."

	dependents ifNil: [^ false].
	self dependents
		do: [:each | each hasUnacceptedEdits ifTrue: [^ true]]
		without: self.
	^ false
