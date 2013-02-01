*AsmJit-Extension
asImm8

	"Convert integer value into a signed immediate operand"
	^ AJImmediate new ivalue: self; size: 1