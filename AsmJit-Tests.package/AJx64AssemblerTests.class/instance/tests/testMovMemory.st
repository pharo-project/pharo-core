testMovMemory
	"mov memory to 8bit register =========================="
	self 
		assert: [:a | a mov: a RCX ptr to: a AL ] 
		bytes: #[16r8A 16r00000001 "ModR/M"].
	
