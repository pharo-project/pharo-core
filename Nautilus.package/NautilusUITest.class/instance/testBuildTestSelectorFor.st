as yet unclassified
testBuildTestSelectorFor

	| method selector |
	method := MorphicEventHandler >> #keyStroke:fromMorph:.
	selector := nautilusUI buildTestSelectorFor: method.
	self assert: (selector = 'testKeyStrokeFromMorph')