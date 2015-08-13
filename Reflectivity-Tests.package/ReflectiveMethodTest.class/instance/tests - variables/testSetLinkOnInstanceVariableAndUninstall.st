testSetLinkOnInstanceVariableAndUninstall
	| ivar link |
	link := MetaLink new.
	ivar := ReflectivityExamples slotNamed: #ivar.
	
	ivar link: link.
	"re-lookup ivar to get the wrapper".
	ivar := ReflectivityExamples slotNamed: #ivar.
	self assert: (ivar links includes: link).
	self assert: (ReflectivityExamples >> #exampleIvarRead) class = ReflectiveMethod.
	self assert: (ReflectivityExamples >> #exampleIvarRead) linkCount = 1.
	link uninstall.
	"re-lookup ivar to get the real var".
	ivar := ReflectivityExamples slotNamed: #ivar.

	self deny: ivar class == LinkWrapper.
	self assert: (ReflectivityExamples >> #exampleIvarRead) class = CompiledMethod.