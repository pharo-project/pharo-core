accessing
dayOfWeek
	"Sunday=1, ... , Saturday=7"

	^ (julianDayNumber + 1 rem: 7) + 1