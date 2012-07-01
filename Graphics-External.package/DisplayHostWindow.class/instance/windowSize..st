basic api
windowSize: aPoint
	"Set the size of the window and then return the current size of the window -
not neccessarily the same "
		
	^windowProxy ifNotNil:[ windowProxy windowSize: aPoint]