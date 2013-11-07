testReadFromPatternRecognizesCorrectlyTheDPattern

	| pattern |

	pattern := 'd.mm.yyyy'.
	
	self assertReading: '4.02.2345' as: pattern equals: (Date year: 2345 month: 2 day: 4).
	self assertReading: '14.12.2345' as: pattern equals: (Date year: 2345 month: 12 day: 14).
	