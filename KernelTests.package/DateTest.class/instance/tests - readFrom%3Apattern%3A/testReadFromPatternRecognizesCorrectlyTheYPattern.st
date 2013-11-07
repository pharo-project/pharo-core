testReadFromPatternRecognizesCorrectlyTheYPattern

	| pattern |

	pattern := 'd.m.y'.
	
	self assertReading: '4.2.3113' as: pattern equals: (Date year: 3113 month: 2 day: 4).
	self assertReading: '4.2.113' as: pattern equals: (Date year: 113 month: 2 day: 4).
	self assertReading: '4.2.13' as: pattern equals: (Date year: 2013 month: 2 day: 4)