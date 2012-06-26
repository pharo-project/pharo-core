tests
testBuildMorphFor

	| model morph |
	model := TestingComposableModel new.
	morph := specInterpreter buildMorphFor: model.
	
	self assert: (morph model == model).
	self assert: (model widget class = PluggableListMorph).