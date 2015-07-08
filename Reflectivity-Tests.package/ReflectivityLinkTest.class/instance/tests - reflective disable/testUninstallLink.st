testUninstallLink
	| sendNode link |
	sendNode := (ReflectivityExamples>>#exampleMethod) ast body statements first value.
	link := MetaLink new.
	sendNode link: link.
	self assert:  (ReflectivityExamples>>#exampleMethod) class = ReflectiveMethod.
	link uninstall.	
	self assert: (ReflectivityExamples>>#exampleMethod) class = CompiledMethod.
	self assert: (ReflectivityExamples>>#exampleMethod) reflectiveMethod = nil.
	