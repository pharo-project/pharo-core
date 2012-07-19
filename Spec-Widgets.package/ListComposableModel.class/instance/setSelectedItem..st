protocol
setSelectedItem: anItem
	<api: #st getter: #selectedItem registration: #whenSelectedItemChanged:>
	"Set the item you want to be selected"
	| index |

	self okToChange ifFalse: [ ^ self ].
	index := self listItems identityIndexOf: anItem ifAbsent: [ ^ self ].
	selectionHolder index contents: index.
	selectionHolder selection contents: anItem