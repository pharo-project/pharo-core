testStringOpMnemonics
	"Test that string operation mnemonics generate the same code as their noop versions"
	| mnemonicBytes |
	asm 
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
	mnemonicBytes := asm bytes.
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

self assert: mnemonicBytes equals: asm bytes.

