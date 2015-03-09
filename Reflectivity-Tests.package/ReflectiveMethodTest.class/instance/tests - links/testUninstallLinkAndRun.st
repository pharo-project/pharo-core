testUninstallLinkAndRun
	| sendNode link |
	sendNode := (ReflectivityExamples>>#exampleMethod) ast body statements first value.
	link := MetaLink new metaObject: Halt; selector: #now.
	sendNode link: link.
	self assert: sendNode hasMetalink.
	self assert: (ReflectivityExamples>>#exampleMethod) class = ReflectiveMethod.
	self assert: (ReflectivityExamples new exampleMethod = 5).
	self assert: (ReflectivityExamples>>#exampleMethod) class = CompiledMethod.
	link uninstall. 
