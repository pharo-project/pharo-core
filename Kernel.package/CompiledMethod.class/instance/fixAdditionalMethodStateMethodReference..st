private
fixAdditionalMethodStateMethodReference: anAdditionalMethodState

	anAdditionalMethodState method: self.
	anAdditionalMethodState pragmas do: [:each | each instVarAt: 1 put: self].