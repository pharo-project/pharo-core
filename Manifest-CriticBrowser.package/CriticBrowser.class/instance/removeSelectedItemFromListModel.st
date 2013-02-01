private
removeSelectedItemFromListModel
	| item block |
	item := criticsModel selectedItem.
	block := item isCompiledMethod
		ifTrue: [ [ :each | each methodClass = item methodClass and: [ each selector = item selector ] ] ]
		ifFalse: [ [ :each | each = item ] ].
	criticsModel items: (criticsModel listItems reject: block).
	self resetSelection.
	self  updateList