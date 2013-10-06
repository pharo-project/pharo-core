setSelectedItem: anItem
	<api: #st getter: #selectedItem>
	"Force the selection of the item anItem"
	| index realItem |
	
	index := self getList indexOf: anItem ifAbsent: [ ^ self ].
	realItem := (self listItems at: index) value.
	selectionHolder index contents: index.
	selectionHolder selection contents: realItem.