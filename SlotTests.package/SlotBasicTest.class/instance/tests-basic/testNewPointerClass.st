testNewPointerClass

	aClass := self makeWithLayout: PointerLayout.
	
	self deny: aClass isCompact.
	self assert: aClass isPointers.
	self assert: aClass isFixed.
	self assert: aClass instVarNames isEmpty.