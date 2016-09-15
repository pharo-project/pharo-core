selectedEntryItems

	^ self items select: [ :item | item isEntryItem ]