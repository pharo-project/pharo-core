protocol
items: aList
	"Set the items of the list.
	aList is a collection of your domain specific items"

	listHolder contents: (aList sorted: sortingBlockHolder contents)