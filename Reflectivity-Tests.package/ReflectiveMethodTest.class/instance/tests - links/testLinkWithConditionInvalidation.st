testLinkWithConditionInvalidation
	| sendNode link |
	sendNode := (ReflectivityExamples>>#exampleMethod) ast body statements first value.
	link := MetaLink new 
		condition: false;
		metaObject: self; 
		selector: #tagExec.
	sendNode link: link.
	self assert: sendNode hasMetalink.
	self assert: (ReflectivityExamples>>#exampleMethod) class = ReflectiveMethod.
	self assert: (tag isNil).
	self assert: (ReflectivityExamples new exampleMethod = 5).
	self assert: (tag isNil).
	link condition: true.
	self assert: (ReflectivityExamples>>#exampleMethod) class = ReflectiveMethod.
	self assert: (ReflectivityExamples new exampleMethod = 5).
	self assert: (tag = #yes).
	self assert: (ReflectivityExamples>>#exampleMethod) class = CompiledMethod.
	link uninstall. 
