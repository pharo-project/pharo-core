testStringOps64Mnemonics
	"Test that 64bit string operation mnemonics generate the same code as their noop versions"
	| mnemonicRegOpBytes mnemonicMemOpBytes |
	asm 
		movs: asm RAX;
		cmps: asm RAX;
		stos: asm RAX;
		lods: asm RAX;
		scas: asm RAX.
	mnemonicRegOpBytes := asm bytes.
	
	asm reset;
		movs: (AJMem new size: 8);
		cmps: (AJMem new size: 8);
		stos: (AJMem new size: 8);
		lods: (AJMem new size: 8);
		scas: (AJMem new size: 8).
	mnemonicMemOpBytes:= asm bytes.
	asm reset;
		movsq;
		cmpsq;
		stosq;
		lodsq;
		scasq.

self assert: mnemonicRegOpBytes equals: asm bytes.
self assert: mnemonicMemOpBytes equals: asm bytes.

"No 64bit locations allowed for ins/outs"
self should: [ asm reset; ins: RAX; bytes] raise: Error.
self should: [ asm reset; outs: RAX; bytes] raise: Error.