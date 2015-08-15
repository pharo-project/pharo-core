testSetLinkOnGlobalVariable
	| classVar link |
	link := MetaLink new.
	classVar := GlobalForTesting binding.
	classVar link: link.

	"re-lookup ivar to get the wrapper".
	classVar :=  GlobalForTesting binding.
	self assert: (classVar links includes: link).
	self assert: (ReflectivityExamples >> #exampleGlobalRead) class = ReflectiveMethod.
	GlobalForTesting binding uninstall. 
	ReflectivityExamples compileAll.