items: aList
	<api: #st getter: #listItems>
	"Populate the drop list with a list of ui specific items"
	"aList is a list of domain specific objects. If you want to specify more precisely the item actions, see #addItemLabeled:do:"
	
	| dropListItems |
	dropListItems := aList collect: [ :e | DropListItem on: e do: [] ].
	listHolder contents: dropListItems