testPoint2
	"Test passing and returning up of structures >32bit and <= 64 bit"
	| pt1 pt2 pt3 |
	pt1 := FFITestPoint2 new.
	pt1 x: 1. pt1 y: 2.
	pt2 := FFITestPoint2 new.
	pt2 x: 3. pt2 y: 4.
	pt3 := FFITestLibrary ffiTestPoint2: pt1 with: pt2.
	self assert: pt3 x = 4.
	self assert: pt3 y = 6.