testTwoLinks
	| sendNode link1 link2 |
	link1 := MetaLink new. 
	link2 := MetaLink new. 
	
	sendNode := (ReflectivityExamples>>#exampleMethod) ast body statements first value.
	sendNode link: link1.
	sendNode link: link2. 
	self assert: sendNode links size = 2.
	sendNode removeLink: link1.
	self assert: sendNode links size  = 1.
	sendNode removeLink: link2.	
	self assert: sendNode links isNil.
	self assert: (ReflectivityExamples>>#exampleMethod) class = CompiledMethod.
	self assert: (ReflectivityExamples>>#exampleMethod) reflectiveMethod = nil.
	