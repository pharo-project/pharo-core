on: eventName send: selector to: recipient withValue: value
	"Register a recipient for handling an event."
	
	self eventHandler ifNil: [self eventHandler: MouseOverEventHandler new].
	self eventHandler on: eventName send: selector to: recipient withValue: value
