updateContentColor: paneColor
	"Change the content text color."
	
	self enabled
		ifTrue: [self contentMorph textColor: Color black]
		ifFalse: [self contentMorph textColor: Color lightGray]