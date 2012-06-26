Morphic-Widgets-should-be-an-extension
widthToDisplayInList: aList
	"Return the width of my representation as a list item"
	
	self widget ifNil: [ self buildWithSpec ].
	^ self widget widthToDisplayInList: aList