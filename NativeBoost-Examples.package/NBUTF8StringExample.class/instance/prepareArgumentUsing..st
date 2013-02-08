as yet unclassified
prepareArgumentUsing: gen

	"prepare the ByteString argument.
	Allocate a space for string on stack, then copy string contents there
	and add terminating null character "
	
	| asm stringOop len loop done donePreparing notNil 
	 moreThanOne moreThanTwo moreThanThree typeCheck |
	
	asm := gen asm.
	
	typeCheck := asm uniqueLabelName: 'ok'.
	loop := asm uniqueLabelName: 'loop'.
	done := asm uniqueLabelName: 'done'.
	notNil  := asm uniqueLabelName: 'notNil'.
	donePreparing := asm uniqueLabelName: 'donePreparing'.
	moreThanOne := asm uniqueLabelName: 'moreThanOne'.  
	moreThanTwo := asm uniqueLabelName: 'moreThanTwo'.  
	moreThanThree := asm uniqueLabelName: 'moreThanThree'.  
	    
	loader emitLoad: gen.

	"reserve after emitting load, otherwise, if proxy using stackpointer temp, it will be clobbered"
	address := gen reserveTemp.  
	stringOop := gen reserveTemp.
	len := gen reserveTemp.

	asm mov: EAX to: stringOop.
	
	gen optStringOrNull ifTrue: [
		"allow passing nil as string, effectively will push null pointer as argument"
		gen proxy nilObject.
		asm 
			cmp: EAX with: stringOop;
			jne: notNil;
			mov: 0 to: address;  "null pointer"
			jmp: donePreparing.
	].
	asm label: notNil.
	gen proxy isWords: stringOop.
	asm or: EAX with: EAX.
	asm jne: typeCheck.
	gen failWithMessage: 'WideString instance expected'.
	asm label: typeCheck.	
	gen proxy slotSizeOf: stringOop.
	asm mov: EAX to: len.

	"len*4 +1 - the total number of bytes to reserve on stack"
	asm 
		shl: EAX with: 2;
		inc: EAX.
	gen reserveStackBytes: EAX andStoreAddrTo: address.

	gen proxy firstIndexableField: stringOop.

	asm decorateWith: ' copy string contents to the stack ' during: [
	asm 
		push: ESI;
		push: EDI;
		mov: EAX to: ESI;
		mov: address to: EDI;
		mov: len to: ECX;

	label: loop;
		dec: ECX;
		jl: done;
		
		"load the unicode value"
		mov: ESI ptr to: EAX;
		
		cmp: EAX with: 16r7F;
		jg: moreThanOne;
	"one byte"
		mov: AL to: EDI ptr;
		inc: EDI;
		add: ESI with: 4;
		jmp: loop;
	label: moreThanOne;
		cmp: EAX with: 16r7FF;
	 	jg: moreThanTwo;
	"two bytes"
		mov: EAX to: EDX;
		shr: EDX with: 6;
		or: DL with: 16rC0 asUImm;
		mov: DL to: EDI ptr;
		inc: EDI;
		and: AL with: 2r111111;
		or: AL with: 16r80 asUImm;
		mov: AL to: EDI ptr;
		inc: EDI;
		add: ESI with: 4;
		jmp: loop;
	label: moreThanTwo;
		cmp: EAX with: 16rFFFF;
	 	jg: moreThanThree;
	"three bytes"	
		mov: EAX to: EDX;
		shr: EDX with: 12;
		or: DL with: 2r11100000 asUImm;
		mov: DL to: EDI ptr;
		inc: EDI;

		mov: EAX to: EDX;
		shr: EDX with: 6;
		and: DL with: 2r111111;
		or: DL with: 16r80 asUImm;
		mov: DL to: EDI ptr;
		inc: EDI;

		and: AL with: 2r111111;
		or: AL with: 16r80 asUImm;
		mov: AL to: EDI ptr;
		inc: EDI;
		add: ESI with: 4;
		jmp: loop;
		
	label: moreThanThree;
		cmp: EAX with: 16r1FFFFF;
		jg: gen failedLabel; "no more than 4 bytes!"
	"4 bytes"
		mov: EAX to: EDX;
		shr: EDX with: 18;
		or: DL with: 2r11110000 asUImm;
		mov: DL to: EDI ptr;
		inc: EDI;

		mov: EAX to: EDX;
		shr: EDX with: 12;
		and: DL with: 2r111111;
		or: DL with: 16r80 asUImm;
		mov: DL to: EDI ptr;
		inc: EDI;

		mov: EAX to: EDX;
		shr: EDX with: 6;
		and: DL with: 2r111111;
		or: DL with: 16r80 asUImm;
		mov: DL to: EDI ptr;
		inc: EDI;

		and: AL with: 2r111111;
		or: AL with: 16r80 asUImm;
		mov: AL to: EDI ptr;
		inc: EDI;
		add: ESI with: 4;
		jmp: loop;
		
	label: done;
		mov: 0 to: EDI ptr8;  "store null-terminating character"
		pop: EDI;
		pop: ESI.
	].
	gen releaseTemps: 2.  "keep the address reserved, otherwise it will be clobbered"
	asm label: donePreparing