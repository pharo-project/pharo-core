icons
iconForItem: anItem at: anIndex

	^ iconCache 
		at: anItem
		ifAbsentPut: [ (self model iconForItem: anItem at: anIndex) asMorph ]