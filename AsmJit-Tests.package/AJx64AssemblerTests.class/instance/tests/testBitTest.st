testBitTest
	"8 Bit ====================================================="
	self asmShould: [ :a| a bt: a R8B with: 16r1. ] raise: Error.
	
	"16 bit ====================================================="
	"lower bank 16bit register opcode + ModR/M"
	self 
		assert: [ :a| a bt: a AX with: 16r01 ]
		bytes: #[ "16bit mode" 16r66  "OP" 16r0f 16rba "ModRM" 2r11100000 "immediate" 16r01].

	"upper bank 16bit register opcode + ModR/M"
	self 
		assert: [ :a| a bt: a R8W with: 16r01 ]
		bytes: #[ "16bit mode" 16r66 "REX" 2r01000001 "OP" 16r0f 16rba "ModRM" 2r11100000 "immediate" 16r01].
		
	"32 bit ====================================================="
	"lower bank 32bit register opcode + ModR/M"
	self 
		assert: [ :a| a bt: a EAX with: 16r01 ]
		bytes: #[ "OP" 16r0f 16rba "ModRM" 2r11100000 "immediate" 16r01].
	
	"upper bank 32bit register opcode + ModR/M"
	self 
		assert: [ :a| a bt: a R8D with: 16r01 ]
		bytes: #[ "REX" 2r01000001 "OP" 16r0f 16rba "ModRM" 2r11100000 "immediate" 16r01].
	
	"64 bit ====================================================="
	"lower bank 32bit register opcode + ModR/M"
	self 
		assert: [ :a| a bt: a RAX with: 16r01 ]
		bytes: #[ "REX" 2r01001000 "OP" 16r0f 16rba "ModRM" 2r11100000 "immediate" 16r01].
	
	"upper bank 32bit register opcode + ModR/M"
	self 
		assert: [ :a| a bt: a R8 with: 16r01 ]
		bytes: #[ "REX" 2r01001001 "OP" 16r0f 16rba "ModRM" 2r11100000 "immediate" 16r01].