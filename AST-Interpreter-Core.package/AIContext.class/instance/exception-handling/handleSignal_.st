handleSignal: exception
	"Sent to handler (on:do:) contexts only.  If my exception class (first arg) handles exception then execute my handle block (second arg), otherwise forward this message to the next handler context.  If none left, execute exception's defaultAction (see nil>>handleSignal:)."

	| result |
	
	(self exceptionHandler handles: exception)
		ifFalse: [ ^ self nextHandlerContext handleSignal: exception].

	exception privHandlerContext: self contextTag.
	
	"self tempAt: 3 put: false. " "disable self while executing handle block"
	
	result := self exceptionHandler handle: exception.
	
	self return: result.  "return from self if not otherwise directed in handle block"
