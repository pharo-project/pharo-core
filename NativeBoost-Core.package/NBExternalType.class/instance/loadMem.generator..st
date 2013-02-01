emitting code
loadMem: memoryOperand generator: gen.
	"load the value from memory operand into return value register"
	gen asm mov: memoryOperand to: (gen asm reg: 0 size: self typeSize).
