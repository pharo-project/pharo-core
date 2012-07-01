utils
addMonths: monthCount 
	|year month maxDaysInMonth day |
	year := self year + (monthCount + self monthIndex - 1 // 12).
	month := self monthIndex + monthCount - 1 \\ 12 + 1.
	maxDaysInMonth := Month daysInMonth: month forYear: year.
	day := self dayOfMonth > maxDaysInMonth
				ifTrue: [maxDaysInMonth]
				ifFalse: [self dayOfMonth].
	^ Date
		newDay: day
		month: month
		year: year