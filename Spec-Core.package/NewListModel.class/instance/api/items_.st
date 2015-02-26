items: aList
	"Set the items of the list.
	aList is a collection of your domain specific items.
	Use a two stages notification (issue 7420)."

	"<api: #st getter: #listItems registration: #whenListChanged:>"
	| oldContents |
	oldContents := items value.
	items value: (aList sorted: sortingBlock value).
	listAnnouncer announce: (ValueChanged oldValue: oldContents newValue: items value)