testCopyPreservesLayout
	aClass := self makeWithLayout: FixedLayout.
	anotherClass := aClass copy.
	self deny: anotherClass layout isNil.
	self deny: anotherClass layout == aClass layout.
	self assert: aClass layout host == aClass.
	self assert: anotherClass layout host == anotherClass