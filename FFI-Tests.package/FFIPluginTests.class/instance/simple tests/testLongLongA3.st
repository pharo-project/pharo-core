testLongLongA3
	"Test passing a char, a longlong, and another char."
	| byte1 long1 byte2 long2 |
	byte1 := 3.
	long1 := 16r123456789012.
	byte2 := 4.
	long2 := FFITestLibrary ffiTestLongLongA3: byte1 with: long1 with: byte2.
	self assert: long2 = (byte1 + long1 + byte2)