testing
testHumanWordsForSecondsAgo
	self assert: (Time humanWordsForSecondsAgo: 0.999999999)
			= 'a second ago'.
	self assert: (Time humanWordsForSecondsAgo: 44.99999999)
			= '44.99999999 seconds ago'.
	self assert: (Time humanWordsForSecondsAgo: 89.999999999)
			= 'a minute ago'.
	self assert: (Time humanWordsForSecondsAgo: 2699.999999999)
			= '44 minutes ago'.
	self assert: (Time humanWordsForSecondsAgo: 5399.999999999)
			= 'an hour ago'.
	self assert: (Time humanWordsForSecondsAgo: 64799.999999999)
			= '17 hours ago'.
	