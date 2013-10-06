testXor
	"8bit register xor 8bit immediate =================================="		
	"lower bank 8bit register opcode + ModR/M"
	self 
		assert: [ :a | a xor: a CL with: 16r12]
		bytes: #[ 16r80 2r11110001    16r12].
		
	"upper bank 8bit register requiring REX"
	self 
		assert: [ :a | a xor: a R8B with: 16r12]
		bytes: #[2r01000001 16r80 2r11110000    16r12].
		
	"16bit register xor 8bit immediate =================================="
	"lower bank 16bit register"
	self 
		assert: [ :a | a xor: a CX with: 16r1234]
		bytes: #[16r66 16r81 2r11110001    16r34 16r12].
	"upper bank 16bit"
	self 
		assert: [ :a | a xor: a R8W with: 16r1234]
		bytes: #[16r66 2r01000001 16r81 2r11110000 16r34 16r12].
		
	"32bit register ====================================================="
	"lower bank 32bit register"
	self 
		assert: [ :a | a xor: a ECX with: 16r12345678]
		bytes: #[16r81 2r11110001    16r78 16r56 16r34 16r12].
		
	"upper bank register requiring REX prefix"
	self 
		assert: [ :a | a xor: a R8D with: 16r12345678]
		bytes: #[2r01000001 16r81 2r11110000     16r78 16r56 16r34 16r12]
	