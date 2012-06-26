basic api
windowPosition: aPoint
	"set the position of the window and then return the new position"
	^windowProxy ifNotNil:[ windowProxy windowPosition: aPoint]