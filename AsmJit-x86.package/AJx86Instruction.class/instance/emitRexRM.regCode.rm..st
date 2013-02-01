code generation
emitRexRM: opRequires64Bit regCode: regCode rm: rm
	
	self emitRexPrefixW: opRequires64Bit R: (regCode > 7) X: false B: rm isUpperBank
	
