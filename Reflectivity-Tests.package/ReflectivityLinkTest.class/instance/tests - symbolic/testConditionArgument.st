testConditionArgument
	| sendNode link instance |
	sendNode := (ReflectivityExamples>>#exampleMethod) ast body statements first value.
	link := MetaLink new 
		condition: [: object | object == 1];
		metaObject: self; 
		selector: #tagExec.
	sendNode link: link.
	self assert: sendNode hasMetalink.
	instance := ReflectivityExamples new.
	self assert: (ReflectivityExamples>>#exampleMethod) class = ReflectiveMethod.
	self assert: (tag isNil).
	self assert: (instance exampleMethod = 5).
	self assert: (tag isNil).
	link condition: [: object | object == instance].
	self assert: (instance exampleMethod = 5).
	self assert: (tag isNil not).
	link uninstall. 
