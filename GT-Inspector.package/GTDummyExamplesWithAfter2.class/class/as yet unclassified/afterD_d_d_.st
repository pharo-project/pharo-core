afterD: a d: b d: c
	self assert: a notNil.
	self assert: a class = Object.
	
	self assert: b notNil.
	self assert: b == Smalltalk.
	
	self assert: c notNil.
	self assert: c = 'abc'.