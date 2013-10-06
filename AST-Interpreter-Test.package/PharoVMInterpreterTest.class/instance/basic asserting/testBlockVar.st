testBlockVar
	self assert: [ |a| a := 1. a ] value = 1.
	self assert: [ |a| a := 1 + 2. a + 3 ] value = 6.
	self assert: [ |a| [ a := 1 ] value ] value = 1.
	self assert: [ |a| a := 1. [ a := 2 ] value ] value = 2.
	self assert: [ |a| a := 1. [ a := a + 1 ] value ] value = 2.
	self assert: ([ :b ||a| a := 1. [ :c| a := a + 1 + c ] value: b ] value: 3) = 5