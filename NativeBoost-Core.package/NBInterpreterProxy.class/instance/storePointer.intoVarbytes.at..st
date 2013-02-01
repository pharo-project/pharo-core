accessing oop fields
storePointer: op intoVarbytes: destOop at: offset
	" input:
	  op - register, holding a pointer value
	  destOop - register operand with variable bytes oop
	  offset - integer value"

	^ self 
		storeValue: op 
		ofSize: self pointerSize 
		intoVarbytes: destOop 
		at: offset
