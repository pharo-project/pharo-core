separatorAfter: item at: index

	^ separatorSelector
		ifNotNil: [ self model perform: separatorSelector with: item with: index ]