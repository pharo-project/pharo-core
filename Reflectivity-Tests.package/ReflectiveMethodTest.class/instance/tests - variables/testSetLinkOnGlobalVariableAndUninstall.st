testSetLinkOnGlobalVariableAndUninstall
	| global link |
	link := MetaLink new.
	global := GlobalForTesting binding.
	global link: link.

	"re-lookup ivar to get the wrapper".
	global :=  GlobalForTesting binding.
	self assert: (global links includes: link).
	self assert: (ReflectivityExamples >> #exampleGlobalRead) class = ReflectiveMethod.
	

	self assert: (ReflectivityExamples >> #exampleGlobalRead) linkCount = 1.
	link uninstall.
	"re-lookup ivar to get the real var".
	global :=  GlobalForTesting binding.

	self deny: global class == LinkWrapperGlobal.
	self assert: (ReflectivityExamples >> #exampleGlobalRead) class = CompiledMethod.

