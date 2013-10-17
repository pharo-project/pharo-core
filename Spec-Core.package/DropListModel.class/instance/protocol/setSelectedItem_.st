setSelectedItem: anItem
	<api: #st getter: #selectedItem>
	"Force the selection of the item anItem"
	| index realItem |
	
	index := self listItems indexOf: anItem ifAbsent: [ ^ self ].
	realItem := listHolder at: index.
	selectionHolder index contents: index.
	selectionHolder selection contents: realItem.