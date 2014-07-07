Object subclass: #IRAbstractBytecodeGenerator
	instanceVariableNames: 'seqOrder orderSeq seqBytes jumps literals lastLiteral currentSeqId currentSeqNum bytes lastSpecialReturn instrMaps instrMap stacks stack numArgs properties numberOfTemps additionalLiterals forceLongForm'
	classVariableNames: 'SpecialSelectors'
	poolDictionaries: ''
	category: 'OpalCompiler-Core-Bytecode'