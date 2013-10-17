items: aList
	"Set the items of the list.
	aList is a collection of your domain specific items.
	Use a two stages notification (issue 7420)."

	<api: #st getter: #listItems registration: #whenListChanged:>
	| oldContents |
	oldContents := items contents.
	items contents: (aList sorted: sortingBlock contents).
	listAnnouncer announce: (ValueChanged oldContents: oldContents newContents: items contents)