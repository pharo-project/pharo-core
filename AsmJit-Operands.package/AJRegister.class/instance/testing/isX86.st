isX86
	"Return whether this register is available in the standard x86 instruction set"

	^ self requiresRex not & (self index < 8)