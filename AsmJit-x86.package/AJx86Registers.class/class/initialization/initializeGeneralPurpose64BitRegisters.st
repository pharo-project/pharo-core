initializeGeneralPurpose64BitRegisters
	"initialize general purpose 64 bit registers"
	
	self
		registerBase: 16r30
			class: AJx86GPRegister
			rex: #dontCare
			values: #(#RAX #RCX #RDX #RBX #RSP #RBP #RSI #RDI);
		registerBase: 16r38
			class: AJx86GPRegister
			rex: #required
			values: #(#R8 #R9 #R10 #R11 #R12 #R13 #R14 #R15)