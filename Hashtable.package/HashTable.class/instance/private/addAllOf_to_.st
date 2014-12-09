addAllOf: anItem to: aTable
	| item oldNext |
	item := anItem.
	[ item notNil ]
		whileTrue: [
			oldNext := item next.
			self addItem: item to: aTable.
			item := oldNext ].