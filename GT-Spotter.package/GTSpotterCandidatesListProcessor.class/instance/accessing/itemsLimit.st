itemsLimit
	^ candidatesLimit ifNil: [ self defaultItemsLimit ]