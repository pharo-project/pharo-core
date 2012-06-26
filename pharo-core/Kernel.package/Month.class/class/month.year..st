squeak protocol
month: month year: year
	"Create a Month for the given <year> and <month>.
	<month> may be a number or a String with the
	name of the month. <year> should be with 4 digits."

	^ self starting: (DateAndTime year: year month: month day: 1)
