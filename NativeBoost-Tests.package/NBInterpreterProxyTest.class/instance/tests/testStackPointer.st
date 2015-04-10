testStackPointer

	Smalltalk os isWindows ifTrue: [ self skip ].
	self assert: self primCheckStackPointer=0
	