extend: someSlots
	^ PointerLayout new
		slotScope: (LayoutEmptyScope instance extend: someSlots)