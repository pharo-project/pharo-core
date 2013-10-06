testNonLocalReturn

	self assert: [false ifTrue: [ ^ 1 ]. ^ 1 + 1] value = 2.
	self assert: [true ifTrue: [ ^ 1 ]. ^ 1 + 1] value = 1.
	
	self assert: [false ifTrue: [ ^ 1 ] ifFalse: [^ 2]. 1 + 1 + 1] value = 2.