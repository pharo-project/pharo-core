testAfterVariable
	| literalArray link |
	literalArray := (ReflectivityExamples >> #exampleGlobalRead) ast statements first value.
	link := MetaLink new
		metaObject: self;
		selector: #tagExec;
		control: #after.
	literalArray link: link.
	self assert: literalArray hasMetalinkAfter.
	self assert: (ReflectivityExamples >> #exampleGlobalRead) class = ReflectiveMethod.
	self assert: tag isNil.
	self assert: ReflectivityExamples new exampleGlobalRead = Object.
	self assert: tag = 'yes'.
	self assert: (ReflectivityExamples >> #exampleGlobalRead) class = CompiledMethod.
	self deny: (ReflectivityExamples >> #exampleGlobalRead) isQuick.
	link uninstall