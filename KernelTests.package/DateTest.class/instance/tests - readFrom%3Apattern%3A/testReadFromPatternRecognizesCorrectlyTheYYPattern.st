testReadFromPatternRecognizesCorrectlyTheYYPattern

	| pattern |

	pattern := 'd.m.yy'.

	self assertReading: '4.2.3113' as: pattern equals: (Date year: 2031 month: 2 day: 4).
	self assertReading: '4.2.13' as: pattern equals: (Date year: 2013 month: 2 day: 4).
	self assertReading: '4.2.1' as: pattern equals: (Date year: 2001 month: 2 day: 4)