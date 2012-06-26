event handling
on: eventName send: selector to: recipient
	"Register a recipient for handling an event."
	
	self eventHandler ifNil: [self eventHandler: EventHandlerPlus new].
	self eventHandler on: eventName send: selector to: recipient