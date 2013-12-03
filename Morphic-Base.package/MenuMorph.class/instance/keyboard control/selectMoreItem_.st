selectMoreItem: evt
	| allItems |
	allItems := self submorphs select: [ :m | m isKindOf: MenuItemMorph ].
	allItems
		detect: [ :m | m contents size >= 4 and: [ (m contents first: 4) asString = 'more' ] ]
		ifFound: [ :more | 
			self selectItem: more event: evt.
			selectedItem invokeWithEvent: evt ]
		ifNone: [ self flash ]