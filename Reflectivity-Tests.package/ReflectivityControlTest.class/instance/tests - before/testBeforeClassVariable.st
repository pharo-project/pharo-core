testBeforeClassVariable
	"protocol: tests - before"

	| classVar link |
	self skip.
	self flag: #TBD.
	classVar := ReflectivityExamples classVariableNamed: #ClassVar.
	link := MetaLink new
		metaObject: self;
		selector: #tagExec.
	classVar link: link.
	self assert: classVar hasMetalinkBefore.
	self assert: (ReflectivityExamples >> #exampleClassVarRead) class = ReflectiveMethod.
	self assert: tag isNil.
	self assert: ReflectivityExamples new exampleClassVarRead isNil.
	self assert: tag = 'yes'.
	self assert: (ReflectivityExamples >> #exampleClassVarRead) class = CompiledMethod.
	self deny: (ReflectivityExamples >> #exampleClassVarRead) isQuick.
	link uninstall.
	ReflectivityExamples recompile: #exampleClassVarRead