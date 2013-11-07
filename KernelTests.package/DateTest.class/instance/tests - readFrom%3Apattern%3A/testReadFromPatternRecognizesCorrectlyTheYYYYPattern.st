testReadFromPatternRecognizesCorrectlyTheYYYYPattern

	| pattern |

	pattern := 'd.m.yyyy'.
	
	self assertReading: '4.2.2345' as: pattern equals: (Date year: 2345 month: 2 day: 4).
	self assertReading: '4.2.234' as: pattern equals: (Date year: 234 month: 2 day: 4).
	self assertReading: '4.2.23' as: pattern equals: (Date year: 2023 month: 2 day: 4)