instance creation
fromSeconds: seconds
	"Answer an instance of me which is 'seconds' seconds after January 1, 1901 UTC."

	| days dateAndTime dayNumber |
	
	days := (Duration seconds: seconds) days.
	dayNumber := days + SqueakEpoch.
	dateAndTime := DateAndTime basicNew
		ticks: dayNumber days ticks offset: 0;
		yourself.
	^ self starting: dateAndTime.
		
	