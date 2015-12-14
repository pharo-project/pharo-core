testMixedIntAndStruct3
	"Test passing an integer and a small structure."
	| i1 pt1 result |
	i1 := 42.
	pt1 := FFISmallStruct1 new.
	pt1 x: 3. pt1 y: 4.
	result := FFITestLibrary ffiTestMixedIntAndStruct3: i1 with: pt1.
	self assert: result = 49