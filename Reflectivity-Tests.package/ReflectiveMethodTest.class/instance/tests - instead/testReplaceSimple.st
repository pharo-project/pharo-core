testReplaceSimple
	| sendNode link instance|
	sendNode := (ReflectivityExamples>>#exampleMethod) ast body statements first value.
	link := MetaLink new 
		metaObject: self; 
		selector: #tagExec;
		control: #instead.
	sendNode link: link.
	self assert: sendNode hasMetalink.
	self assert: (ReflectivityExamples>>#exampleMethod) class = ReflectiveMethod.
	instance := ReflectivityExamples new.
	self assert: (instance exampleMethod class = ReflectiveMethodTest). "we replaced the send with the link"
	self assert: tag = #yes.
	link uninstall. 
