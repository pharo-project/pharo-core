testBeforeBlock
	| blockNode link |
	blockNode := (ReflectivityExamples >> #exampleBlock) ast statements first value.
	link := MetaLink new
		metaObject: self;
		selector: #tagExec.
	blockNode link: link.
	self assert: blockNode hasMetalinkBefore.
	self assert: (ReflectivityExamples >> #exampleBlock) class = ReflectiveMethod.
	self assert: tag isNil.
	self assert: ReflectivityExamples new exampleBlock == 5.
	self assert: tag = 'yes'.
	self assert: (ReflectivityExamples >> #exampleBlock) class = CompiledMethod.
	link uninstall