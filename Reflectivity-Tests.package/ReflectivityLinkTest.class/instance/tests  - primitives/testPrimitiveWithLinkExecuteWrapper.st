testPrimitiveWithLinkExecuteWrapper
	| methodNode link  |
	link := MetaLink new.
	methodNode := (ReflectivityExamples>>#examplePrimitiveMethod) ast.
	self assert: (ReflectivityExamples>>#examplePrimitiveMethod) isRealPrimitive.
	methodNode link: link.
	self assert: (methodNode links includes: link).
	self assert: (ReflectivityExamples>>#examplePrimitiveMethod) class = CompiledMethod.
	self assert: ReflectivityExamples new examplePrimitiveMethod class == ByteString.
	self deny: (ReflectivityExamples>>#examplePrimitiveMethod) isRealPrimitive.
	link uninstall.
	