readOop: memoryOperand generator: gen
	"emit code to read a value from given memory operand
	and convert it to a corresponding ST object" 

	| asm proxy size offset oop src |
	
	asm := gen asm.
	proxy := gen proxy.

	pointerArity > 0 ifTrue: [
		asm mov: memoryOperand to: asm EAX.
		^ self coerceReturn: gen.
		].
	
	"read structure from given address, copy it to newly created instance of corresponding struct class"
	
	asm lea: asm EAX with: memoryOperand.
	src := gen reserveTemp.
	asm mov: asm EAX to: src.
	
	"instantiate our struct"

	oop := gen reserveTemp.
	gen emitFetchClass: objectClass.
	proxy instantiateClass: asm EAX indexableSize: 0.
	asm mov: asm EAX to: oop.
	
	gen emitFetchClass: ByteArray.
	proxy instantiateClass: asm EAX indexableSize: objectClass instanceSize.
	proxy storePointer: self dataIvarIndex ofObject: oop  withValue: asm EAX.
	proxy varBytesFirstFieldOf: asm EAX.
	asm mov: src to: asm EDX.
	"in EAX is pointer to first byte of struct"

	size := self valueSize.
	offset := 0.
	[ size >= 4 ] whileTrue: [
		asm 
			mov: asm EDX ptr + offset to: asm ECX;
			mov: asm ECX to: asm EAX ptr + offset.
		size := size - 4.
		offset := offset + 4.
	].

	size >= 2  ifTrue: [
		asm 
			mov: asm EDX ptr16 + offset to: asm CX;
			mov: asm CX to: asm EAX ptr16 + offset.
		size := size - 2.
		offset := offset + 2.
	].

	size > 0  ifTrue: [
		" last byte "
		asm 
			mov: asm EDX ptr8 + offset to: asm CL;
			mov: asm CL to: asm EAX ptr8 + offset.
	].

	"return an instance of objectClass as result"
	asm mov: oop to: asm EAX 
