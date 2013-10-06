testTest
	"8bit operand  and lower bank 8bit register"		
	self assert: [:a | a test: a CL with: 16r12 ]
		bytes: #[246	 193 16r12].
	"8bit operand  and uppe bank 8bit register"	
	self assert: [:a | a test: a R8B with: 16r12]
		bytes: #[2r01000001 2r11110110  2r11000000  16r12].
	
	"16bit operand  and lower bank 16bit register"		
	self assert: [:a | a test: a CX with: 16r1234]
		bytes: #[102 247 193   16r34 16r12].
	"16bit operand  and uppe bank 16bit register"	
	self assert: [:a | a test: a R8W with: 16r1234]
		bytes: #[102 65 247 192   16r34 16r12].
	
	"32bit operand  and lower bank 32bit register"		
	self assert: [:a | a test: a ECX with: 16r12345678]
		bytes: #[247 193   16r78 16r56 16r34 16r12].
	"32bit operand  and uppe bank 32bit register"	
	self assert: [:a | a test: a R8D with: 16r12345678]
		bytes: #[65 247 192   16r78 16r56 16r34 16r12].
	
	"32bit operand  and lower bank 64bit register"		
	self assert: [:a| a test: a RCX with: 16r12345678]
		bytes: #[72 247 193   16r78 16r56 16r34 16r12].
	"32bit operand  and uppe bank 64bit register"	
	self assert: [:a| a test: a R8 with: 16r12345678]
		bytes: #[73 247 192	  16r78 16r56 16r34 16r12].
	
	
	