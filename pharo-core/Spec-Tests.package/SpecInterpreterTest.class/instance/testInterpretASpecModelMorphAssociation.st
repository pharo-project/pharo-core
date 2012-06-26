tests
testInterpretASpecModelMorphAssociation

	| spec model morph |
	model := DummyComposableModel new.
	spec := {#PluggableListMorph. #model:. #model}.
	morph := specInterpreter interpretASpec: spec model: model.
	
	self assert: (model widget == morph).