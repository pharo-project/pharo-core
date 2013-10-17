addTempNode: aTempVariableNode
	"Utilities for when we want to add some temporaries."
	
	self makeTemporariesRemovable.
	^temporaries add: aTempVariableNode