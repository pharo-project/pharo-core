testMovZX
	"byte to word ========================================"
	"lower bank 8bit to lower bank 16bit"
	self 
		assert: [:a | a movzx: a AL to: a AX ]
		bytes: #[102 15 182 192 ].
	"lower bank 8bit to upper bank 16bit"
	self 
		assert: [:a | a movzx: a AL to: a R8W ]
		bytes: #[102 68 15 182 192].
	"upper bank 8bit to lower bank 16bit"
	self 
		assert: [:a | a movzx: a R8B to: a AX ]
		bytes: #[102 65 15 182 192].
	"upper bank 8bit to upper bank 16bit"
	self 
		assert: [:a | a movzx: a R8B to: a R8W ]
		bytes: #[102 69 15 182 192].
	
	"byte to doubleword ================================"
	"lower bank 8bit to lower bank 32bit"
	self 
		assert: [:a | a movzx: a AL to: a EAX ]
		bytes: #[15 182 192 ].
	"lower bank 8bit to upper bank 32bit"
	self 
		assert: [:a | a movzx: a AL to: a R8D ]
		bytes: #[68 15 182 192].
	"upper bank 8bit to lower bank 32bit"
	self 
		assert: [:a | a movzx: a R8B to: a EAX ]
		bytes: #[65 15 182 192].
	"upper bank 8bit to upper bank 32bit"
	self 
		assert: [:a | a movzx: a R8B to: a R8D ]
		bytes: #[69 15 182 192].
	
	"byte to quadword ==================="
	"lower bank 8bit to lower bank 64bit"
	self 
		assert: [:a | a movzx: a AL to: a RAX ]
		bytes: #[72 15 182 192 ].
	"lower bank 8bit to upper bank 64bit"
	self 
		assert: [:a | a movzx: a AL to: a R8 ]
		bytes: #[76 15 182 192].
	"upper bank 8bit to lower bank 64bit"
	self 
		assert: [:a | a movzx: a R8B to: a RAX ]
		bytes: #[73 15 182 192 ].
	"upper bank 8bit to upper bank 64bit"
	self 
		assert: [:a | a movzx: a R8B to: a R8 ]
		bytes: #[77 15 182 192].
	
	"word to quadword ==================="
	"lower bank 16bit to lower bank 64bit"
	self 
		assert: [:a | a movzx: a AX to: a RAX ]
		bytes: #[72 15 183 192].
	"lower bank 16bit to upper bank 64bit"
	self 
		assert: [:a | a movzx: a AX to: a R8 ]
		bytes: #[76 15 183 192].
	"upper bank 16bit to lower bank 64bit"
	self 
		assert: [:a| a movzx: a R8W to: a RAX ]
		bytes: #[73 15 183 192].
	"upper bank 16bit to upper bank 64bit"
	self 
		assert: [:a | a movzx: a R8W to: a R8 ]
		bytes: #[77 15 183 192].