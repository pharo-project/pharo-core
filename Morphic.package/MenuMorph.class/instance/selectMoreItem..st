keyboard control
selectMoreItem: evt
	| allItems more |
	allItems := self submorphs select: [:m | m isKindOf: MenuItemMorph].
	more := allItems detect: [:m | (m contents size >= 4) and: [(m contents first: 4) asString = 'more'.]] ifNone: [^ self flash].
	self selectItem: more event: evt.
	selectedItem invokeWithEvent: evt