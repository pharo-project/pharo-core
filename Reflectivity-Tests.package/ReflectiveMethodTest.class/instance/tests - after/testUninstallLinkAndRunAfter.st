testUninstallLinkAndRunAfter
	| sendNode link |
	sendNode := (ReflectivityExamples >> #exampleMethod) ast body statements first value.
	link := MetaLink new
		metaObject: self;
		selector: #tagExec;
		control: #after.
	sendNode link: link.
	self assert: sendNode hasMetalinkAfter.
	self assert: (ReflectivityExamples >> #exampleMethod) class = ReflectiveMethod.
	self assert: tag isNil.
	self assert: ReflectivityExamples new exampleMethod = 5.
	self assert: tag = #yes.
	self assert: (ReflectivityExamples >> #exampleMethod) class = CompiledMethod.
	link uninstall