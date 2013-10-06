testNonLocalReturn

	self assert: (self interpret: 'false ifTrue: [ ^ 1 ]. ^ 1 + 1') = 2.
	self assert: (self interpret: 'true ifTrue: [ ^ 1 ]. ^ 1 + 1') = 1.
	
	self assert: (self interpret: 'false ifTrue: [ ^ 1 ] ifFalse: [^ 2]. 1 + 1 + 1') = 2.