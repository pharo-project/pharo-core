colorForItem: item at: index

	^ (self isSelectedIndex: index)
		ifTrue: [ self theme selectionTextColor ]
		ifFalse: [ self defaultItemColor ]