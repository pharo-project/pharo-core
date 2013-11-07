testReadFromPatternRecognizesCorrectlyTheDDPattern

	| pattern |

	pattern := 'dd.mm.yyyy'.
	
	self assertReading: '4.02.2345' as: pattern equals: nil.
	self assertReading: '14.12.2345' as: pattern equals: (Date year: 2345 month: 12 day: 14).
	