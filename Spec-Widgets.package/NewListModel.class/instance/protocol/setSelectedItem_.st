setSelectedItem: anItem
	<api: #st getter: #selectedItem registration: #whenSelectedItemChanged:>
	"Set the item you want to be selected"
	| index |

	index := self listItems identityIndexOf: anItem ifAbsent: [ ^ self ].

	self setSelectedIndex: index