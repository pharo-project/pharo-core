pushAsValue: gen
	"pass a structure by value on stack"
	| asm oop bytesToCopy offset |
	
	asm := gen asm.
	
	oop := gen reserveTemp annotation: 'oop'.

	loader emitLoad: gen to: oop.
	
	loader isReceiver ifFalse: [
		"do not check type if argument is receiver, since we already know its class"
		self verifyClassOf: oop is: objectClass generator: gen.
	].

	self fetchStructAddressFrom: oop gen: gen. "in EAX the pointer to first byte of struct"
	 
	"struct size aligned to stack argument alignment"
	asm sub: asm ESP with: self stackSize. 

	"generate code to copy struct contents on a stack.
	source is [EAX]
	destination is [ESP]
	"

	bytesToCopy := self valueSize. 
	offset := 0.	
		
	"first copy by 4 bytes"
	[ bytesToCopy >= 4 ] whileTrue: [
		asm 
			mov: asm EAX ptr32 + offset to: asm EDX;
			mov: asm EDX to: asm ESP ptr32 + offset.
			
		bytesToCopy := bytesToCopy - 4.
		offset := offset + 4. 
	].
	"copy rest using 1-byte transfer"
	[ bytesToCopy > 0 ] whileTrue: [
		asm 
			mov: asm EAX ptr8 + offset to: asm DL;
			mov: asm DL to: asm ESP ptr8 + offset.
			
		bytesToCopy := bytesToCopy - 1.
		offset := offset + 1. 
	].


	gen releaseTemps: 1.
	