private
process: aProcess controller: aController context: aContext
	super initialize.
	Smalltalk globals at: #MessageTally ifPresent: [ :c | c new close ].
	contents := nil.
	interruptedProcess := aProcess.
	interruptedController := aController.
	contextStackTop := aContext.
	self newStack: (contextStackTop stackOfSize: 1).
	contextStackIndex := 1.
	externalInterrupt := false.
	selectingPC := true.
	errorWasInUIProcess := false