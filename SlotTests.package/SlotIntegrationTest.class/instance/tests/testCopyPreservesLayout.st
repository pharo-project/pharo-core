testCopyPreservesLayout

	aClass := self makeWithLayout: FixedLayout.
	anotherClass := aClass copy.
	
	self deny: anotherClass layout isNil.
	self assert: aClass layout host == aClass.
	self assert: anotherClass layout host == anotherClass.