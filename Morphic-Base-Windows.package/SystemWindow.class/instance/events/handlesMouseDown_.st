handlesMouseDown: evt 
	"If I am not the topWindow, then I will only respond to dragging by the title bar.
	Any other click will only bring me to the top"

	self isEmbedded ifTrue: [^false].
	(self labelRect containsPoint: evt cursorPoint)
		ifTrue: [^ true].
	^ self activeOnlyOnTop and: [self ~~ TopWindow]