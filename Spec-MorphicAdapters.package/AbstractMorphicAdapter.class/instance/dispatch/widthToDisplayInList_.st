widthToDisplayInList: aList
	"Return the width of my representation as a list item"
	
	self model extent ifNotNil: [:ex | ^ ex x ].
	self model initialExtent ifNotNil: [:ex | ^ ex x ].

	self widget ifNil: [ self buildWithSpec ].
	^ self widget widthToDisplayInList: aList