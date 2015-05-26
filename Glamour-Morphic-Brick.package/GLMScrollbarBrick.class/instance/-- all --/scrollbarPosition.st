scrollbarPosition

	^ self valueOfProperty: #brickScrollbarPosition ifAbsent: [ self themer scrollbarPosition ]