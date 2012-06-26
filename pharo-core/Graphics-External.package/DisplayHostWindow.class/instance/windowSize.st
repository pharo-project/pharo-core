basic api
windowSize
	"return the current size of the window - not neccessarily the same as my bitmap"

	^windowProxy ifNotNil:[ windowProxy windowSize]