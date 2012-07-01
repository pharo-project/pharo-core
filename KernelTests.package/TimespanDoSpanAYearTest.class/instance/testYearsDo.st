testing
testYearsDo
	| yearArray |
	yearArray := Array
				with: (Year
						starting: (DateAndTime
								year: 2004
								month: 12
								day: 25)
						duration: 366 days).
	self assert: aTimespan years = yearArray
