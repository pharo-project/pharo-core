testSetLinkOnClassVariable
	| classVar link |
	link := MetaLink new.
	classVar := (ReflectivityExamples classVariableNamed: #ClassVar).
	classVar link: link.

	"re-lookup ivar to get the wrapper".
	classVar := ReflectivityExamples classVariableNamed: #ClassVar.
	self assert: (classVar links includes: link).
	self assert: (ReflectivityExamples >> #exampleClassVarRead) class = ReflectiveMethod.
	(ReflectivityExamples classVariableNamed: #ClassVar) uninstall. 
	ReflectivityExamples compileAll.