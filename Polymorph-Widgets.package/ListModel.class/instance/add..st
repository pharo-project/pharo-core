accessing
add: anItem
	"Add an item to the list and answer it."

	|answer|
	answer := self list add: anItem.
	self changed: #list.
	^answer