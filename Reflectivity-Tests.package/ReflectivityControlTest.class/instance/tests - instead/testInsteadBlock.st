testInsteadBlock
	| blockNode link |
	blockNode := (ReflectivityExamples >> #exampleBlock) ast statements first value.
	link := MetaLink new
		metaObject: self;
		control: #instead;
		selector: #return3.
	self assert: ReflectivityExamples new exampleBlock == 5.	
	blockNode link: link.
	self assert: blockNode hasMetalinkInstead.
	self assert: (ReflectivityExamples >> #exampleBlock) class = ReflectiveMethod.
	self assert: ReflectivityExamples new exampleBlock == 3.
	self assert: (ReflectivityExamples >> #exampleBlock) class = CompiledMethod.
	link uninstall