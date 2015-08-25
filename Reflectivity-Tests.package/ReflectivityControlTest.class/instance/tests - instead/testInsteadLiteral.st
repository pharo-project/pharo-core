testInsteadLiteral
	| literalNode link |
	literalNode := (ReflectivityExamples >> #exampleLiteral) ast statements first value.
	link := MetaLink new
		metaObject: self;
		control: #instead;
		selector: #return3.
	literalNode link: link.
	self assert: literalNode hasMetalinkInstead.
	self assert: (ReflectivityExamples >> #exampleLiteral) class = ReflectiveMethod.
	self assert: ReflectivityExamples new exampleLiteral == 3.
	self assert: (ReflectivityExamples >> #exampleLiteral) class = CompiledMethod.
	self deny: (ReflectivityExamples >> #exampleLiteral) isQuick.
	link uninstall