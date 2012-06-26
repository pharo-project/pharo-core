initialization
release
	"Prevent that syntaxError window lets a suspended compiler process running, when the window is closed."
	| p |
	(debugger isNil or: [	(p := debugger interruptedProcess) isNil 
							or: [p isTerminated]]) ifTrue: [^self].
       p terminate