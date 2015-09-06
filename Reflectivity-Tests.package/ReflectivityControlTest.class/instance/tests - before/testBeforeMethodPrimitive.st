testBeforeMethodPrimitive
	| methodNode link |
	methodNode := (ReflectivityExamples >> #examplePrimitiveMethod) ast.
	link := MetaLink new
		metaObject: self;
		selector: #tagExec.
	methodNode link: link.
	self assert: methodNode hasMetalink.
	self assert: (ReflectivityExamples >> #examplePrimitiveMethod) class = CompiledMethod.
	self assert: tag isNil.
	self assert: ReflectivityExamples new examplePrimitiveMethod = 5.
	self assert: tag = #yes.
	self assert: (ReflectivityExamples >> #examplePrimitiveMethod) class = CompiledMethod.
	link uninstall.
	ReflectivityExamples recompile: #examplePrimitiveMethod