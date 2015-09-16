testLinkOneShot
	| sendNode link |
	sendNode := (ReflectivityExamples>>#exampleMethod) sendNodes first.
	link := MetaLink new 
		metaObject: self; 
		options: #(optionOneShot);
		selector: #tagExec.
	sendNode link: link.
	self assert: sendNode hasMetalink.
	self assert: (ReflectivityExamples>>#exampleMethod) class = ReflectiveMethod.
	self assert: tag isNil.
	self assert: (ReflectivityExamples new exampleMethod = 5).
	self assert: (tag = #yes).
	self assert: (ReflectivityExamples>>#exampleMethod) class = CompiledMethod.
	self deny: sendNode hasMetalink.
	tag := nil.
	self assert: (ReflectivityExamples new exampleMethod = 5).
	self assert: tag isNil.
	link uninstall. 
