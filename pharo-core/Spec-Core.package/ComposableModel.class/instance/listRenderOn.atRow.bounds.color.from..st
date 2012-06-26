Morphic-Widgets-should-be-an-extension
listRenderOn: aCanvas atRow: aRow bounds: drawBounds color: drawColor from: aMorph
	"Specify how this object as a list item should be drawn"

	self widget ifNil: [ self buildWithSpec ].
	self widget listRenderOn: aCanvas atRow: aRow bounds: drawBounds color: drawColor from: aMorph