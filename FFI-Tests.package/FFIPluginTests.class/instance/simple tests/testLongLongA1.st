testLongLongA1
	"Test passing a char and two longlongs."
	| byte long1 long2 long3 |
	byte := 42.
	long1 := 16r123456789012.
	long2 := (-1 << 31).
	long3 := FFITestLibrary ffiTestLongLongA1: byte with: long1 with: long2.
	self assert: long3 = (byte + long1 + long2)