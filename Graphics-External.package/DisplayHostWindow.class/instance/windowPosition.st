basic api
windowPosition
	"return the current position of the window"
		
	^windowProxy ifNotNil:[ windowProxy windowPosition]