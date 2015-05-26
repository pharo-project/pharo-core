testStringOpMnemonics
	"Test that string operation mnemonics using both register and memory operands generate the same code as their noop versions"
	| mnemonicRegOpBytes mnemonicMemOpBytes |
	asm 
		reset;
		ins: asm AL;
		ins: asm AX;
		ins: asm EAX;
			
		outs: asm AL;
		outs: asm AX;
		outs: asm EAX;
		
		movs: asm AL;
		movs: asm AX;
		movs: asm EAX;
		
		cmps: asm AL;
		cmps: asm AX;
		cmps: asm EAX;
		
		stos: asm AL;
		stos: asm AX;
		stos: asm EAX;
		
		lods: asm AL;
		lods: asm AX;
		lods: asm EAX;
	
		scas: asm AL;
		scas: asm AX; 
		scas: asm EAX.
	mnemonicRegOpBytes := asm bytes.
	
	asm reset;
		ins: (AJMem new size: 1);
		ins: (AJMem new size: 2);
		ins: (AJMem new size: 4);
			
		outs: (AJMem new size: 1);
		outs: (AJMem new size: 2);
		outs: (AJMem new size: 4);
		
		movs: (AJMem new size: 1);
		movs: (AJMem new size: 2);
		movs: (AJMem new size: 4);
		
		cmps:(AJMem new size: 1);
		cmps: (AJMem new size: 2);
		cmps: (AJMem new size: 4);
		
		stos: (AJMem new size: 1);
		stos: (AJMem new size: 2);
		stos: (AJMem new size: 4);
		
		lods: (AJMem new size: 1);
		lods: (AJMem new size: 2);
		lods: (AJMem new size: 4);
	
		scas: (AJMem new size: 1);
		scas: (AJMem new size: 2);
		scas: (AJMem new size: 4).
	mnemonicMemOpBytes := asm bytes.
		
	asm reset;
		insb;
		insw;
		insd;
		outsb;
		outsw;
		outsd;
		movsb;
		movsw;
		movsd;
		cmpsb;
		cmpsw;
		cmpsd;
		stosb;
		stosw;
		stosd;
		lodsb;
		lodsw;
		lodsd;
		scasb;
		scasw;
		scasd.
self assert: mnemonicRegOpBytes equals: asm bytes.
self assert: mnemonicMemOpBytes equals: asm bytes.
asm reset

