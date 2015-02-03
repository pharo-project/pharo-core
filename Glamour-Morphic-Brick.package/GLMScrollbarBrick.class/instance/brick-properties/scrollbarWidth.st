scrollbarWidth

	^ self valueOfProperty: #brickScrollbarWidth ifAbsent: [ self themer scrollbarWidth ]