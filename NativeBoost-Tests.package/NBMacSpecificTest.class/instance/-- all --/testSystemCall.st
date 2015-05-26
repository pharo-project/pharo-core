testSystemCall

	self flag: 'The result goes to stdout. Can we capture it?'.
	self 
		assert: (NBMacShell run: 'expr 1 + 1')
		equals: 0.