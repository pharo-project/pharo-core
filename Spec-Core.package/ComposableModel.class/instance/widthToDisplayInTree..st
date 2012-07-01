Morphic-Widgets-should-be-an-extension
widthToDisplayInTree: aTree
	"Return the width of my representation as a list item"
	
	self extent ifNotNil: [:ex | ^ ex x ].
	
	self widget ifNil: [ self buildWithSpec ].
	^ self widget widthToDisplayInTree: aTree