list protocol
getItems

	^ self getItemsSelector 
		ifNil: [ #() ]
		ifNotNil: [:s | self model perform: s ]