testMul
	"8bit unsigned multiplication =================================="
	"lower bank register: AX := AL * CL"
	self 
		assert: [ :a | a mul: a CL]
		bytes: #[ 16rF6 "ModR/M" 2r11100001 ].
	"upper bank register needs an REX prefix: AX := AL * R8B"
	self 
		assert: [ :a | a mul: a R9B]
		bytes: #[ 2r01000001 16rF6 2r11100001].
		
	"16bit unsigned multiplication =================================="	
	"DX:AX := AX * CX"
	self 
		assert: [ :a | a mul: a CX]
		bytes: #[ "16bit fallback" 16r66 16rF7 2r11100001].
	"32bit unsigned multiplication =================================="	
	"EDX:EAX := EAX * ECX"
	self 
		assert: [ :a | a mul: a ECX]
		bytes: #[ 16rF7 2r11100001 ].
	"64bit unsigned multiplication =================================="	
	"RDX:RAX := RAX * RCX"
	self 
		assert: [ :a| a mul: a RCX]
		bytes: #[ 2r01001000 16rF7 2r11100001].