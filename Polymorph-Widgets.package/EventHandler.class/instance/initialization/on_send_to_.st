on: eventName send: selector to: recipient
	eventName == #mouseDown ifTrue:
		[mouseDownRecipient := recipient.  mouseDownSelector := selector. ^ self].
	eventName == #mouseMove ifTrue:
		[mouseMoveRecipient := recipient.  mouseMoveSelector := selector. ^ self].
	eventName == #mouseStillDown ifTrue:
		[mouseStillDownRecipient := recipient.  mouseStillDownSelector := selector. ^ self].
	eventName == #mouseUp ifTrue:
		[mouseUpRecipient := recipient.  mouseUpSelector := selector. ^ self].
	eventName == #mouseEnter ifTrue:
		[mouseEnterRecipient := recipient.  mouseEnterSelector := selector. ^ self].
	eventName == #mouseLeave ifTrue:
		[mouseLeaveRecipient := recipient.  mouseLeaveSelector := selector. ^ self].
	eventName == #mouseEnterDragging ifTrue:
		[mouseEnterDraggingRecipient := recipient.  mouseEnterDraggingSelector := selector. ^ self].
	eventName == #mouseLeaveDragging ifTrue:
		[mouseLeaveDraggingRecipient := recipient.  mouseLeaveDraggingSelector := selector. ^ self].
	eventName == #click ifTrue:
		[clickRecipient := recipient. clickSelector := selector. ^ self].
	eventName == #doubleClick ifTrue:
		[doubleClickRecipient := recipient. doubleClickSelector := selector. ^ self].
	eventName == #doubleClickTimeout ifTrue:
		[doubleClickTimeoutRecipient := recipient. doubleClickTimeoutSelector := selector. ^ self].
	eventName == #startDrag ifTrue:
		[startDragRecipient := recipient. startDragSelector := selector. ^ self].
	eventName == #keyStroke ifTrue:
		[keyStrokeRecipient := recipient.  keyStrokeSelector := selector. ^ self].
	eventName == #gesture ifTrue:
		[ ^self onGestureSend: selector to: recipient ].
	self error: 'Event name, ' , eventName , ' is not recognizable.'
