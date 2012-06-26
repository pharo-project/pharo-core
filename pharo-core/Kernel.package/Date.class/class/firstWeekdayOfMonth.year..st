simple queries
firstWeekdayOfMonth: month year: year
	"Answer the weekday index of the first day in <month> in the <year>."

	^ (self newDay: 1 month: month year: year) weekdayIndex
