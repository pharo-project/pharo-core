Tests
testLeapYear

	self
		assert: (self dateClass leapYear: 1973) equals: 0;
		assert: (self dateClass leapYear: 1972) equals: 1.