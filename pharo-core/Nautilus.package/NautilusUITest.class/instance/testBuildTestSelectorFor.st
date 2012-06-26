as yet unclassified
testBuildTestSelectorFor

	| method selector |
	method := EventHandler >> #keyStroke:fromMorph:.
	selector := nautilusUI buildTestSelectorFor: method.
	self assert: (selector = 'testKeyStrokeFromMorph')