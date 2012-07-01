tests
testBuildWindowFor

	| model widget |
	model := TestingComposableModel new.
	widget := specInterpreter buildWindowFor: model.
	
	self assert: ( model widget = widget).
	self assert: (widget submorphs anySatisfy: [:e | e class = PluggableListMorph ])