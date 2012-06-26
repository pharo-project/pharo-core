tests
testBuildMorphForWithSpec

	| model morph |
	model := TestingComposableModel new.
	morph := specInterpreter buildMorphFor: model withSpec: #testingSpec.
	
	self assert: (morph model == model).
	self assert: (model widget class = PluggableTextMorph).