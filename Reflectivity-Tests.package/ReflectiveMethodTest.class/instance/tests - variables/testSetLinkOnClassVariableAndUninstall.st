testSetLinkOnClassVariableAndUninstall
	| classVar link |
	link := MetaLink new.
	classVar := (ReflectivityExamples classVariableNamed: #ClassVar).
	classVar link: link.

	"re-lookup ivar to get the wrapper".
	classVar := ReflectivityExamples classVariableNamed: #ClassVar.
	self assert: (classVar links includes: link).
	self assert: (ReflectivityExamples >> #exampleClassVarRead) class = ReflectiveMethod.
	
	self assert: (ReflectivityExamples >> #exampleClassVarRead) linkCount = 1.
	link uninstall.
	"re-lookup ivar to get the real var".
	classVar := ReflectivityExamples classVariableNamed: #ClassVar.

	self deny: classVar class == LinkWrapperClassVariable.
	self assert: (ReflectivityExamples >> #exampleClassVarRead) class = CompiledMethod.
