event handling
handleMonthNameTouched

	| newMonthName dayCount dialog |
	newMonthName := UIManager default 
		chooseDropList: 'Choose a month:'
		list: #('January' 'February' 'March' 'April' 'May' 'June' 'July'
			'August' 'September' 'October' 'November' 'December').

	newMonthName isNil
		ifTrue: [^self].

	dayCount := (Month month: newMonthName year: date year) daysInMonth.
	self date: (Date newDay: (date dayOfMonth min: dayCount) month: newMonthName year: date year).
	self changed.
