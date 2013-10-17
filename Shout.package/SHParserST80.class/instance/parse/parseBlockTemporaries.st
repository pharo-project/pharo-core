parseBlockTemporaries
	currentTokenFirst == $|
		ifTrue: [self scanPast: #blockTempBar.
			[self isName]
				whileTrue: [self scanPast: #blockPatternTempVar].
			self failUnless: currentToken = '|'.
			self scanPast: #blockTempBar]