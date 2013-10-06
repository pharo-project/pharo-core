testAssembly3

	" instructions without operands.

	(AJInstructionDescription instructions select: [:each | each group = #emit]) keys asSortedCollection
	 "
	| str |
	str :=
#(
#cbw 16r66 16r98
#cdq 16r99
#cdqe 16r48 16r98
#clc 16rF8
#cld 16rFC
#cmc 16rF5 
#cpuid 16r0F 16rA2
#cqo  16r48	16r99 "64 bit "
#cwd 16r66 16r99
#cwde 16r98
"#daa 16r27 32 bit"
"#das 16r2F 32 bit"
#emms 16r0F 16r77
#f2xm1 16rD9 16rF0
#fabs  16rD9 16rE1
#fchs 16rD9 16rE0
#fclex 16r9B 16rDB 16rE2
#fcompp 16rDE 16rD9
#fcos 16rD9 16rFF
#fdecstp 16rD9 16rF6
#fincstp 16rD9 16rF7
#finit 16r9B 16rDB 16rE3
#fld1 16rD9 16rE8
#fldl2e 16rD9 16rEA
#fldl2t 16rD9 16rE9
#fldlg2 16rD9 16rEC
#fldln2 16rD9 16rED
#fldpi 16rD9 16rEB
#fldz 16rD9 16rEE
#fnclex 16rDB 16rE2
#fninit 16rDB 16rE3
#fnop 16rD9 16rD0
#fpatan 16rD9 16rF3
#fprem 16rD9 16rF8
#fprem1 16rD9 16rF5
#fptan 16rD9 16rF2
#frndint 16rD9 16rFC
#fscale 16rD9 16rFD
#fsin 16rD9 16rFE
#fsincos 16rD9 16rFB
#fsqrt 16rD9 16rFA
#ftst 16rD9 16rE4
#fucompp 16rDA 16rE9
#fwait 16r9B
#fxam 16rD9 16rE5
#fxtract  16rD9 16rF4
#fyl2x  16rD9 16rF1
#fyl2xp1 16rD9 16rF9
#int3 16rCC
#leave  16rC9
#lfence 16r0F 16rAE 16rE8
#lock 16rF0 "prefix"
#mfence 16r0F 16rAE 16rF0
#monitor 16r0F 16r01 16rC8
#mwait 16r0F 16r01 16rC9
#nop 16r90
#pause 16rF3 16r90
"#popad 16r61 32 bit"
#popfd 16r9D
#popfq 16r48 16r9D   "- 64 bit "
"#pushad 16r60 32 bit"
#pushf 16r66 16r9C
"#pushfd 16r9C 32 bit"
#pushfq 16r9c" -64 bit"
#rdtsc 16r0F 16r31  
#rdtscp 16r0F 16r01 16rF9
#sahf 16r9E
#sfence 16r0F 16rAE 16rF8
#stc 16rF9
#std 16rFD
#ud2 16r0F 16r0B
#std 16rFD "dummy"
) readStream.

[ str atEnd ] whileFalse: [
	| instr tst bytes |
	instr := str next.
	tst := OrderedCollection new.
	[ str peek isInteger ] whileTrue: [ tst add: str next  ].

	asm reset noStackFrame.
	asm perform: instr.
	bytes := asm bytes.
	self assert: (bytes = tst asByteArray ) description: instr, ' failed. expected ', tst asByteArray printString, ' but got ', bytes asByteArray printString.
].
