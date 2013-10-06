unwindAndRestartToContext: aContext
	|ctx|

	ctx := interruptedProcess popTo: aContext.
	ctx == aContext ifTrue: [ 
		"Only restart the process if the stack was unwind"
		interruptedProcess
			restartTop;
			stepToSendOrReturn ].
	self flag: 'Should a warning be displayed if the the unwind failed?'.
	self updateContextTo:  aContext