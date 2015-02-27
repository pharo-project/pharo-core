comments: aCollection

	aCollection 
		ifEmpty: [ self removeProperty: #comments ifAbsent: [] ] 
		ifNotEmpty: [ self propertyAt: #comments put: aCollection ].