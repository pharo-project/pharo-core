switchModeIfNecessary
	| newMode |
	newMode := self checkConditions.
	(modeActivated xor: newMode)
		ifTrue: [ self switchMode ]