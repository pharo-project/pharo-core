afterB: a b: b b: c
	self assert: a notNil.
	self assert: a class = GTExample.
	
	self assert: b notNil.
	self assert: b == Smalltalk.
	
	self assert: c notNil.
	self assert: c = 2