testTwoSendLinks
	| sendNodes link |
	sendNodes := (ReflectivityExamples>>#exampleTwoSends) sendNodes.
	link := MetaLink new 
		metaObject: self; 
		selector: #tagExec:;
		arguments: #(node).
	sendNodes do: [:each | each link: link].
	self assert: (ReflectivityExamples>>#exampleTwoSends) class = ReflectiveMethod.
	self assert: (tag isNil).
	self assert: (ReflectivityExamples new exampleTwoSends = 5).
	self assert: (tag = sendNodes last).
	self assert: (ReflectivityExamples>>#exampleMethod) class = CompiledMethod.
	link uninstall. 
