initializeGeneralPurpose16BitRegisters
	"initialize general purpose 16 bit registers "

	self
		registerBase: 16r10
			class: AJx86GPRegister
			rex: #dontCare
			values: #(#AX #CX #DX #BX #SP #BP #SI #DI);
		registerBase: 16r18
			class: AJx86GPRegister
			rex: #required
			values: #(#R8W #R9W #R10W #R11W #R12W #R13W #R14W #R15W)