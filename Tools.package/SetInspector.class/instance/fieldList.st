accessing
fieldList
	object
		ifNil: [^ Set new].
	^ self baseFieldList
		, (object array
				withIndexCollect: [:each :i | each ifNotNil: [i printString]])
		  select: [:each | each notNil]