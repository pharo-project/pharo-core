astTranslatorClass
	^ astTranslatorClass ifNil: [ astTranslatorClass := OCASTTranslator ]