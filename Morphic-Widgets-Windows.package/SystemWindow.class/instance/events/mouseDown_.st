mouseDown: evt
	"Changed to properly process the mouse down event if passing to
	submorphs."
		
	self isEmbedded ifTrue: [^self].
	
	self isTopWindow
		ifTrue: [self comeToFront] "rise above non-window morphs"
		ifFalse:[	self activate].

	evt wasHandled: false.
	self submorphsDo: [ :morph | morph processEvent: evt ].
	
	"evt wasHandled ifTrue: [ ^self ]."
	evt wasHandled: true.
	
	evt hand waitForClicksOrDrag: self event: evt. "allow double-click/drag response"