tests
testBindings

	self assert: specInterpreter bindings bindings class equals: MorphicBindings.
	specInterpreterClass bindings: MorphicBindingsWithSplitters new.
	self assert: specInterpreter bindings bindings class equals: MorphicBindingsWithSplitters.
	
	specInterpreterClass buildWidgetFor: TestingComposableModel new.
	self assert: specInterpreter bindings bindings class equals: MorphicBindings.