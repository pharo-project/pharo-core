mouseDown: evt
	"Changed to properly process the mouse down event if passing to
	submorphs."
	
	(self valueOfProperty: #processingMouseDown) == true
		ifTrue: [^self]. "recursive handling"
	self isEmbedded ifTrue: [^self].
	
	evt wasHandled: true.
	evt hand waitForClicksOrDrag: self event: evt. "allow double-click response"
	self setProperty: #clickPoint toValue: evt cursorPoint.
	TopWindow == self
		ifTrue: [self comeToFront] "rise above non-window morphs"
		ifFalse:[
			TopWindow ifNotNil: [:w |
			w rememberKeyboardFocus: evt hand keyboardFocus].
		evt hand releaseKeyboardFocus.
		self activate.
		self announce: (WindowActivated new 
							event: evt;
							window: self; 
							yourself).
].
	self setProperty: #processingMouseDown toValue: true.
		[evt wasHandled: false.
		self processEvent: evt]
			ensure: [self setProperty: #processingMouseDown toValue: false]