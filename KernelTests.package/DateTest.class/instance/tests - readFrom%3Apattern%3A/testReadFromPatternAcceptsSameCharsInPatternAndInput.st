testReadFromPatternAcceptsSameCharsInPatternAndInput

	self assertReading: 'a4.2.2345' as: 'ad.m.y' equals: (Date year: 2345 month: 2 day: 4).
		
