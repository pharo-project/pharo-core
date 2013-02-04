list protocol
iconMaxSize

	^ self getIconMaxSizeSelector
		ifNil: [ nil ]
		ifNotNil: [:s | self model perform: s ]