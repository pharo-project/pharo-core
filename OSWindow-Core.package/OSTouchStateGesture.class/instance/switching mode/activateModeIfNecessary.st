activateModeIfNecessary
	(self checkConditions ==> modeActivated)
		ifFalse: [ self switchMode ]