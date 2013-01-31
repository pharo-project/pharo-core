tests
testDynamicBuild

	| model widget1 widget2 widget3 |
	model := TestingComposableModel new.
	widget1 := specInterpreterClass buildWidgetFor: model.
	widget2 := specInterpreterClass buildWidgetFor: model.
	
	self deny: widget1 == widget2.
	
	model needRebuild: false.
	widget3 := specInterpreterClass buildWidgetFor: model.
	
	self assert: widget2 == widget3.
	self assert: model needRebuild