initialize
initialize
	"Initialization code for WindowModel"

	super initialize.

	model := nil asValueHolder.
	initialExtent := nil asValueHolder.
	title := self class title asValueHolder.
	
	model whenChangedDo: [:m | self updateTitle ].
	title whenChangedDo: [ ]