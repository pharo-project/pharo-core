Object subclass: #CompilationContext
	instanceVariableNames: 'requestor failBlock noPattern class logged interactive options environment parserClass semanticAnalyzerClass astTranslatorClass bytecodeGeneratorClass compiledMethodTrailer forSyntaxHighlighting encoderClass astTransformPlugins usesFullBlockClosure requestorScopeClass'
	classVariableNames: 'BytecodeBackend UsesFullBlockClosure'
	poolDictionaries: ''
	category: 'OpalCompiler-Core-FrontEnd'