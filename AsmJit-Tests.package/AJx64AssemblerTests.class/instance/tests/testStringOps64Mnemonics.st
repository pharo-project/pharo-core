testStringOps64Mnemonics
	"Test that 64bit string operation mnemonics generate the same code as their noop versions"
	| mnemonicBytes |
	asm 
		movs: asm RAX;
		cmps: asm RAX;
		stos: asm RAX;
		lods: asm RAX;
		scas: asm RAX.
	mnemonicBytes := asm bytes.
	asm reset;
		movsq;
		cmpsq;
		stosq;
		lodsq;
		scasq.

self assert: mnemonicBytes equals: asm bytes.

"No 64bit locations allowed for ins/outs"
self should: [ asm reset; ins: RAX; bytes] raise: Error.
self should: [ asm reset; outs: RAX; bytes] raise: Error.