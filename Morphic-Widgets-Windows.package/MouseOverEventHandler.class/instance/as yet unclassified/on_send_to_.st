on: eventName send: selector to: recipient
	"Register the selector and recipient for the given event name."
	
	eventName == #mouseOver ifTrue:
		[mouseOverRecipient := recipient.  mouseOverSelector := selector. ^ self].
	^super on: eventName send: selector to: recipient