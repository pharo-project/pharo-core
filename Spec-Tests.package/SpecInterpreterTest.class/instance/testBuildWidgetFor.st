tests
testBuildWidgetFor

	| model morph |
	model := TestingComposableModel new.
	morph := specInterpreterClass buildWidgetFor: model.
	
	self assert: (morph model == model).
	self assert: (model widget class = PluggableListMorph).