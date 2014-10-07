Object subclass: #CompilationContext
	instanceVariableNames: 'requestor failBlock noPattern class category logged interactive options environment parserClass semanticAnalyzerClass astTranslatorClass bytecodeGeneratorClass compiledMethodTrailer'
	classVariableNames: 'BytecodeBackend WarningAllowed'
	poolDictionaries: ''
	category: 'OpalCompiler-Core-FrontEnd'