events
click: event fromMorph: sourceMorph 
	"This message is sent only when double clicks are handled."
	^ self
		send: clickSelector
		to: clickRecipient
		withEvent: event
		fromMorph: sourceMorph