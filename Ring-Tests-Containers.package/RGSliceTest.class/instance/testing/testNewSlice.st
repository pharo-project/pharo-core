testNewSlice
	| newSlice |
	
	newSlice:= RGFactory current createSliceNamed: 'Foo'.
	
	self assert: (newSlice isSlice).
	self assert: (newSlice classes isEmpty).
	self assert: (newSlice environment == Smalltalk globals)