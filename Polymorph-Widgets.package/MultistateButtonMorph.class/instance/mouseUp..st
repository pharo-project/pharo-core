as yet unclassified
mouseUp: evt 
	"Handle a mouse up event."
	
	super mouseUp: evt.
	self enabled ifFalse: [^self].
	self down: false.
	(self containsPoint: evt cursorPoint)
		ifTrue: [self triggerEvent: #up]
		ifFalse: [self triggerEvent: #upOutside]