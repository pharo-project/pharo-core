as yet unclassified
mouseDownInSlider: event
	"Ignore if disabled."
	
	self enabled ifFalse: [^self].
	^super mouseDownInSlider: event