testSetLinkOnInstanceVariable
	| ivar link |
	link := MetaLink new.
	ivar := ReflectivityExamples slotNamed: #ivar.
	ivar link: link.

	"re-lookup ivar to get the wrapper".
	ivar := ReflectivityExamples slotNamed: #ivar.
	self assert: (ivar links includes: link).
	self assert: (ReflectivityExamples >> #exampleIvarRead) class = ReflectiveMethod.
	(ReflectivityExamples slotNamed: #ivar) uninstall. 
	ReflectivityExamples compileAll.