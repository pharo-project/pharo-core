initialize-release
initializeWithSize: aSize
	"initialize an instance of receiver with data held in object memory heap "
	size := aSize.
	data := ByteArray new: size * self class elementSize.
	

	