truncation
truncated
	"Answer a date and time to the nearest preceding whole second"
	
	^ self species
		year: self year
		month: self month
		day: self dayOfMonth
		hour: self hour
		minute: self minute
		second: self second
		offset: self offset 