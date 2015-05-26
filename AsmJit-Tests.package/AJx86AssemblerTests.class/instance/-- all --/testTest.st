testTest
	"Special RAX opcodes"
	
	"8bit operand  opcode"		
	asm 
		test: AL with: 5.
	self assert: asm bytes = #[16rA8 05].

	
	asm reset;
		test: AX with: 5.
	"16bit operand Prefix byte, 16bit immediate (LSB)"
	self assert: asm bytes = #[16r66 16rA9 05 0].

	"32bit operand "
	asm reset;
		test: EAX with: 1.
	self assert: asm bytes =  #[16rA9 01 00 00 00].
	
	"Need more assert for non-EAX receiver, non-immediate operands"
	
	
	