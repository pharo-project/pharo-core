testing
testPerfectSentence
	| result |
	result := self checker
		check: 'This is an english sentence without problems.'.
	self assert: result isCollection.
	self assert: result isEmpty