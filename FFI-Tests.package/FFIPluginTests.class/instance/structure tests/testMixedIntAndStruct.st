testMixedIntAndStruct
	"Test passing an integer and two structures."
	| i1 pt1 pt2 result |
	i1 := 42.
	pt1 := FFITestPoint2 new.
	pt1 x: 3. pt1 y: 4.
	pt2 := FFITestPoint2 new.
	pt2 x: 5. pt2 y: 6.
	result := FFITestLibrary ffiTestMixedIntAndStruct: i1 with: pt1 with: pt2.
	self assert: result = 60.