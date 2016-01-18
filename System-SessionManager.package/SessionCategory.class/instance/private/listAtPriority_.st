listAtPriority: anInteger 
	^ priorityLists
		at: anInteger
		ifAbsentPut: [ OrderedCollection new ]