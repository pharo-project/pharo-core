mouseDown: evt
	"Changed to properly process the mouse down event if passing to
	submorphs."
		
	self isEmbedded ifTrue: [^self].
	
	TopWindow == self
		ifTrue: [self comeToFront] "rise above non-window morphs"
		ifFalse:[
			TopWindow ifNotNil: [:w |
				w rememberKeyboardFocus: evt hand keyboardFocus
			].
		
			evt hand releaseKeyboardFocus. 
				
			self activate.
			self announce: (
				WindowActivated new 
					event: evt; 
					window: self; 
					yourself
				).
		].

	evt wasHandled: false.
	self submorphsDo: [ :morph | morph processEvent: evt ].
	
	"evt wasHandled ifTrue: [ ^self ]."
	evt wasHandled: true.
	
	evt hand waitForClicksOrDrag: self event: evt. "allow double-click/drag response"