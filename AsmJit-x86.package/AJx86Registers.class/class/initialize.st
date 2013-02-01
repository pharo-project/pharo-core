initialization
initialize
	| author |
	
	self classPool at: #Codes put: IdentityDictionary new. 
	
	self initializeGeneralPurpose8BitRegisters.
	self initializeGeneralPurpose16BitRegisters.
	self initializeGeneralPurpose32BitRegisters.
	self initializeGeneralPurpose64BitRegisters.
	
	self initializeInstructionPointerRegisters.
	
	self initializeX87Registers.
	self initializeMMXRegisters.
	self initializeSSERegisters.