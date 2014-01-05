separatorAfter: item at: index
	"returns whether there should be a separator after an item displayed at a given index."
	
	^ separatorSelector value
		ifNotNil: [ self model perform: separatorSelector with: item with: index ]
		ifNil: [ false ]