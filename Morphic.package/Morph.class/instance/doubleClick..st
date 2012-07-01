event handling
doubleClick: evt
	"Handle a double-click event. This message is only sent to clients that request it by sending #waitForClicksOrDrag:event: to the initiating hand in their mouseDown: method. This default implementation does nothing.
	LC 2/14/2000 08:32 - added: EventHandler notification"

	^ self eventHandler ifNotNil:
		[self eventHandler doubleClick: evt fromMorph: self].