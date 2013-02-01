list protocol
getListSize

	^ self getListSizeSelector
		ifNil: [ -1 ]
		ifNotNil: [:s | self model perform: s ]