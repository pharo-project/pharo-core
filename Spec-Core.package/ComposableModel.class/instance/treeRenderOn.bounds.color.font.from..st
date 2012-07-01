Morphic-Widgets-should-be-an-extension
treeRenderOn: aCanvas bounds: drawBounds color: drawColor font: aFont from: aMorph
	"Specify how this object as a list item should be drawn"

	self widget ifNil: [ self buildWithSpec ].
	self widget treeRenderOn: aCanvas bounds: drawBounds color: drawColor font: aFont from: aMorph