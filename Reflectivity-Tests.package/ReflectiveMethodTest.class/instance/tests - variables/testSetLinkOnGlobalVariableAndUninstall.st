testSetLinkOnGlobalVariableAndUninstall
	| global link |
	link := MetaLink new.
	global := GlobalForTesting binding.
	global link: link.
	self assert: (global links includes: link).
	self assert: (ReflectivityExamples >> #exampleGlobalRead) class = ReflectiveMethod.
	self assert: (ReflectivityExamples >> #exampleGlobalRead) linkCount = 1.
	link uninstall.
	self assert: (ReflectivityExamples >> #exampleGlobalRead) class = CompiledMethod.

