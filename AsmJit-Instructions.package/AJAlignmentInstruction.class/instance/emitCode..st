emitting code
emitCode: asm
	| padding |
	
	padding := self paddingForPosition: position.
	
	"new machine code: | padding |"
	machineCode := ByteArray new: padding .