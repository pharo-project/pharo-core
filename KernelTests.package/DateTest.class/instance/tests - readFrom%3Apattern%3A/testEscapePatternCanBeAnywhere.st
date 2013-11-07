testEscapePatternCanBeAnywhere

	self assertReading: '4.b2.c2345' as: 'd.\bm.\cy' equals: (Date year: 2345 month: 2 day: 4).
		
	