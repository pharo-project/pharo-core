Object subclass: #CompilationContext
	instanceVariableNames: 'requestor failBlock noPattern class category logged interactive options environment parserClass semanticAnalyzerClass astTranslatorClass bytecodeGeneratorClass compiledMethodTrailer encoderClass'
	classVariableNames: 'BytecodeBackend WarningAllowed'
	poolDictionaries: ''
	category: 'OpalCompiler-Core-FrontEnd'