rootContextHandleSignal: aRootContext  message: aMessage
	| exception |
	
	exception := aMessage arguments first.
	
	exception class = Halt
		ifTrue: [ ^ InterpretationError signalFor: exception ].
		
	"run the normal excpetion handling procedures if there is no Halt"
	self 
		invokeMethod: (AIRootContext >> #handleSignal:) 
		on: aRootContext 
		message: aMessage