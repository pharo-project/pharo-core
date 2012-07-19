scrolling
scrollAbsolute: event
	"Ignore if disabled."
	
	self enabled ifFalse: [^self].
	^super scrollAbsolute: event