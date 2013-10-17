fetchAddressFromData: dataOop gen: gen

	"Input: the oop of data ivar (dataOop) from an instance of NBExternalStructure subclass
	Output: the address of struct's first field is in EAX.

	2 cases:
	  - data is ByteArray, then use address of its first byte
	  - data is NBExternalAddress, then use address value "
	
	| oopClass proxy asm notExternalAddress done |

	proxy := gen proxy.
	asm := gen asm.
	
	oopClass := gen reserveTemp.
	notExternalAddress := asm uniqueLabelName: 'notExternalAddress'.
	done := asm uniqueLabelName: 'done'.
	
	proxy fetchClassOf: dataOop.
	asm mov: asm EAX to: oopClass.

	gen emitFetchClass: NBExternalAddress.
	asm cmp: asm EAX with: oopClass.
	asm jne: notExternalAddress.
	
	"Data is external address. use its value"
	proxy fetchPointer: 0 ofObject: dataOop. 
	asm jmp: done.

	"Here we assume it is var-byte object (bytearray), use address of its first byte"
	asm label: notExternalAddress.
	proxy varBytesFirstFieldOf:  dataOop.

	asm label: done.

	gen releaseTemps: 1.
