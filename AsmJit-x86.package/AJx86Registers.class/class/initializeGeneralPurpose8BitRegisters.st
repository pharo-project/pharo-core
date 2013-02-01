initialization
initializeGeneralPurpose8BitRegisters
	"general purpose 8 bit registers "
	self registerBase: 0 class: AJx86GPRegister values: #(
		#AL  #CL    #DL    #BL    #AH    #CH    #DH    #BH   
		#R8B #R9B   #R10B  #R11B  #R12B  #R13B  #R14B  #R15B).