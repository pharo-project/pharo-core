dependents access
hasUnacceptedEdits
	"Answer true if any of the views on this object has unaccepted edits."

	self dependents
		do: [:each | each hasUnacceptedEdits ifTrue: [^ true]]
		without: self.
	^ false