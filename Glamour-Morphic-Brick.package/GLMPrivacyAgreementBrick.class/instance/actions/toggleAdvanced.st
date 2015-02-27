toggleAdvanced

	(self hasSubbrick: self advancedBrick)
		ifTrue: [ self hideAdvanced ]
		ifFalse: [ self showAdvanced ]