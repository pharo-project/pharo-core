testMixedIntAndStruct2
	"Test passing an integer and two structures."
	| i1 pt1 result |
	i1 := 42.
	pt1 := FFITestPoint4 new.
	pt1 x: 3. pt1 y: 4. pt1 z: 5. pt1 w: 6.
	result := FFITestLibrary ffiTestMixedIntAndStruct2: i1 with: pt1.
	self assert: result = 60.