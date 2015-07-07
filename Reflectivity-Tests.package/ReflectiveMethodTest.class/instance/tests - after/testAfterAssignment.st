testAfterAssignment
	| assignmentNode link |
	
	self skip.
	
	self flag: #TBD. "underflow in bc generation"
	
	assignmentNode := (ReflectivityExamples >> #exampleAssignment) assignmentNodes first.
	link := MetaLink new
		metaObject: self;
		selector: #tagExec;
		control: #after.
	assignmentNode link: link.
	self assert: assignmentNode hasMetalinkAfter.
	self assert: (ReflectivityExamples >> #exampleAssignment) class = ReflectiveMethod.
	self assert: tag isNil.
	self assert: ReflectivityExamples new exampleAssignment = Object.
	self assert: tag = 'yes'.
	self assert: (ReflectivityExamples >> #exampleAssignment) class = CompiledMethod.
	link uninstall