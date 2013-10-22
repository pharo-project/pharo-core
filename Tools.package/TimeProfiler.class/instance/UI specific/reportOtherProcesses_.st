reportOtherProcesses: aBoolean
	self reportOtherProcesses ~= aBoolean
		ifTrue: [
			reportOtherProcesses := aBoolean.
			self changed: #reportOtherProcesses.
			self updateList]
