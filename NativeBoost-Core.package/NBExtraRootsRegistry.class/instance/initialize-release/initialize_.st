initialize: aMemoryCell
	freeCallbackIndexes := OrderedCollection new.
	pool := IdentityDictionary new.
	array := Array new.
	
	cell := aMemoryCell asUnsignedLong. 
	
	self primAtMem: cell put: array.
	self primAddGCRoot: cell.
	
	self at: #'___seed' put: Seed.
	self assert: array size = 1.
	
