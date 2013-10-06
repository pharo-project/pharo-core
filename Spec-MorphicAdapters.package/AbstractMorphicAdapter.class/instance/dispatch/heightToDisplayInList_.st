heightToDisplayInList: aList
	"Return the width of my representation as a list item"
	
	self model extent ifNotNil: [:ex | ^ ex y ].
	self model initialExtent ifNotNil: [:ex | ^ ex y ].
	
	self widget ifNil: [ self buildWithSpec ].
	^ self widget heightToDisplayInList: aList