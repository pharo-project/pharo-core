popTo: aContext 
	"Pop self down to aContext by remote returning from aContext's callee.  Unwind blocks will be executed on the way.
	This is done by pushing a new context on top which executes 'aContext callee return' then resuming self until aContext is reached.  This way any errors raised in an unwind block will get handled by senders in self and not by senders in the activeProcess.
	If an unwind block raises an error that is not handled then the popping stops at the error and the signalling context is returned, othewise aContext is returned."

	| callee |
	self == Processor activeProcess
		ifTrue: [^ self error: 'The active process cannot pop contexts'].
	callee := (self calleeOf: aContext) ifNil: [^ aContext].  "aContext is on top"
	^ self return: callee value: callee receiver