Object subclass: #IRBytecodeGenerator
	instanceVariableNames: 'encoder seqOrder orderSeq seqBytes jumps literals lastLiteral currentSeqId currentSeqNum bytes lastSpecialReturn primitiveBytes instrMaps instrMap stacks stack numArgs properties numberOfTemps additionalLiterals forceLongForm primNumber encoderClass'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'OpalCompiler-Core-Bytecode'