testEnsureBasic

	self assert: (self interpret: '[ ] ensure: [ 2 ].') = nil.
	self assert: (self interpret: '[ 1 ] ensure: [ 2 ].') = 1.
	self assert: (self interpret: '[ 1 ] ensure: [ 2 ]. 3') = 3.
	
	self assert: (self interpret: '[ 1 ] ensure: [ ^ 2 ]. 3') = 2.
	self assert: (self interpret: '[ ^ 1 ] ensure: [ ^ 2 ]. 3') = 2.
	
	self should: [self interpret: '[ Error signal ] ensure: [ ^ 2 ]. 3'] raise: InterpretationError.
	self should: [self interpret: '[ [Error signal] value ] ensure: [ ^ 2 ]. 3' ] raise: InterpretationError.
