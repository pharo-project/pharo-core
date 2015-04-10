testStackPointer2

	Smalltalk os isWindows ifTrue: [ self skip ].
	self assert: self primCheckStackPointer2=0
	