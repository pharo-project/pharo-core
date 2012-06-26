as yet unclassified
testSingleton
	self assert: FreeTypeCache current class = FreeTypeCache.
	self assert: FreeTypeCache current ==  FreeTypeCache current.
	