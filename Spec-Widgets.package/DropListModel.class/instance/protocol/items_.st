items: aList
	<api: #st getter: #listItems>
	"Populate the drop list with a list of DropItems"
	
	| dropListItems |
	dropListItems := aList collect: [ :e | DropListItem on: e do: [] ].
	listHolder contents: dropListItems