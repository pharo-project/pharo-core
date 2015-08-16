testSetLinkOnGlobalVariable
	| globalVar link |
	link := MetaLink new.
	globalVar := GlobalForTesting binding.
	globalVar link: link.
	self assert: (globalVar links includes: link).
	self assert: (ReflectivityExamples >> #exampleGlobalRead) class = ReflectiveMethod.
	globalVar removeProperty: #links.
	ReflectivityExamples compileAll.