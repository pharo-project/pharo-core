mouseUp: evt 
	"Handle a mouse up event."
	
	super mouseUp: evt.
	self enabled ifFalse: [^self].
	self down: false.
	
	(self containsPoint: evt cursorPoint) ifTrue: [ 
		self doAnnounce: (ButtonClicked morph: self).
	]