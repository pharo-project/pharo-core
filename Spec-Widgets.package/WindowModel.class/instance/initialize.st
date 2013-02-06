initialize
initialize
	"Initialization code for WindowModel"

	super initialize.

	model := nil asValueHolder.
	initialExtent := nil asValueHolder.
	title := self class title asValueHolder.
	isClosedHolder := false asValueHolder.
	
	model whenChangedDo: [:m | self updateTitle ].