convertTwoDigitsYear

	(year between: 0 and: 99) ifTrue: [ year := 2000 + year ]