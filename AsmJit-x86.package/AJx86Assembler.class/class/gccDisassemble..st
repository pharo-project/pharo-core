debugging
gccDisassemble: bytesArray
	"compile the given bytes to a C binary and disassemble it using gdb"
	^ self new gccDisassemble: bytesArray