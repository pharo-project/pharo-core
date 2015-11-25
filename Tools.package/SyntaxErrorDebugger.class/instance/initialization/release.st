release
	"Prevent that syntaxError window lets a suspended compiler process running, when the window is closed."

	| p |
	((p := debugSession interruptedProcess) notNil and: [ p isTerminated not])
		ifTrue: [ p terminate].
		
	super release