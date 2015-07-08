testAfterBlock
	| blockNode link |
	blockNode := (ReflectivityExamples >> #exampleBlock) ast statements first value.
	link := MetaLink new
		metaObject: self;
		selector: #tagExec;
		control: #after.
	blockNode link: link.
	self assert: blockNode hasMetalinkAfter.
	self assert: (ReflectivityExamples >> #exampleBlock) class = ReflectiveMethod.
	self assert: tag isNil.
	self assert: ReflectivityExamples new exampleBlock isBlock.
	self assert: tag = 'yes'.
	self assert: (ReflectivityExamples >> #exampleBlock) class = CompiledMethod.
	link uninstall