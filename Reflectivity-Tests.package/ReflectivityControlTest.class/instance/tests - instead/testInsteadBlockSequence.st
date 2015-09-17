testInsteadBlockSequence
	| sequence link |
	sequence := (ReflectivityExamples >> #exampleBlock) ast statements first value receiver body.
	self assert: sequence isSequence.
	link := MetaLink new
		metaObject: self;
		selector: #tagExec;
		control: #instead.
	sequence link: link.
	self assert: sequence hasMetalinkInstead.
	self assert: (ReflectivityExamples >> #exampleBlock) class = ReflectiveMethod.
	self assert: tag isNil.
 	ReflectivityExamples new exampleBlock.
	self assert: tag = 'yes'.
	self assert: (ReflectivityExamples >> #exampleBlock) class = CompiledMethod.
	link uninstall.
	ReflectivityExamples recompile: #exampleBlock