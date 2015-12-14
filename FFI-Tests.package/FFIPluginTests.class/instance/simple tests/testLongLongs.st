testLongLongs
	"Test passing and returning longlongs"
	| long1 long2 long3 |
	long1 := 16r123456789012.
	long2 := (-1 << 31).
	long3 := FFITestLibrary ffiTestLongLong: long1 with: long2.
	self assert: long3 = (long1 + long2)