testing
testHumanWordsForSecondsAgoWithDays

	self assert: (Time humanWordsForSecondsAgo: 18 * 60 * 60)
					= 'yesterday'.
	self assert: (Time humanWordsForSecondsAgo: 24 * 60 * 60)
					= 'yesterday'.
