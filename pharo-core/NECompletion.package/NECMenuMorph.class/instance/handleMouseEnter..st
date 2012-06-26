event handling
handleMouseEnter: anEvent
	self activeHand newKeyboardFocus: controller editor morph.
	anEvent wasHandled: true. 
