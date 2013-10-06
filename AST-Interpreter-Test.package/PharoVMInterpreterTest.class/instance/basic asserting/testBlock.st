testBlock
	self assert: ([ 1 ] isKindOf: BlockClosure).
	
	self assert: [ 1 ] value = 1.
	self assert: [^1] value = 1.
	self assert: [ 1 + 2 ] value = 3.
	
	self assert: (true ifTrue: [ 1 ] ifFalse: [ 0 ]) = 1.
	self assert: (false ifTrue: [ 1 ] ifFalse: [ 0 ]) = 0.
	
	