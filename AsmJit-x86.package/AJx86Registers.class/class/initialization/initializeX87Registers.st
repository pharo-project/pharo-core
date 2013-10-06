initializeX87Registers
	"X87 registers"
	self registerBase: 16r50 class: AJx87Register values: #(
		#ST0 #ST1 #ST2 #ST3 #ST4 #ST5 #ST6 #ST7 ).