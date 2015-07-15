pushAsValue: gen
	" push the pointer to buffer + offset "
	| asm proxy oop buffer offset reg intOkayLabel |
	asm := gen asm.
	proxy := gen proxy.

	oop := gen reserveTemp.
	buffer := gen reserveTemp.
	offset := gen reserveTemp.
	intOkayLabel := asm uniqueLabelName: 'intOk'.
	
	asm decorateWith: 'NBBufferWithOffsetType>>pushAsValue:' during: [  	
	
	loader emitLoad: gen to: oop.
	self verifyClassOf: oop is: self objectClass generator: gen.

	buffer:= gen reserveTemp.
	proxy fetchPointer: self bufferIvarIndex ofObject: oop.
	asm mov: asm EAX to: buffer.

	"check that buffer is byte(s)/word(s) array"
	proxy isBytesOrWords: buffer ifNotJumpTo: gen failedLabel.	

	proxy fetchPointer: self offsetIvarIndex ofObject: oop.
	asm mov: asm EAX to: offset.

	"check that offset is smallint"
	reg := proxy isIntegerObject: offset.	
	asm or: reg with: reg;
		jne: intOkayLabel.
	
	gen failWithMessage: 'Offset is not a smallinteger in provided BufferWithOffset object'.	

	asm label: intOkayLabel.
	
	proxy integerValueOf: offset.
	asm mov: asm EAX to: offset.

	proxy varBytesFirstFieldOf: buffer.
	asm add: asm EAX with: offset.
	
	asm 
		push: asm EAX.	
	].
