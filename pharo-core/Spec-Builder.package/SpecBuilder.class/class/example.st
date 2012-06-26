experimentation
example
	| cmd |
	cmd := ComposableModelDescription new.
	cmd addClassNamed: #SpecTest categorized: 'Spec-Builder'.
	cmd addInstVarNamed: 'toto' kindOfComposablaeModel: TextModel.
	cmd addInstVarNamed: 'titi' kindOf: NewValueHolder.
	cmd addMethodWithSource: 'test1 ^1' category: 'test'.
	cmd addMethodWithSource: 'test2 ^2' category: 'test'.
	cmd addCodeToInitialize: 'self test2.' order: 2.
	cmd addCodeToInitialize: 'self test1' order: 1.

	SpecInterpreter interpretASpec: cmd generate model: ComposableModel.


