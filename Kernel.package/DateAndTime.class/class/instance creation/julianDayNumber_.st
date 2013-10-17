julianDayNumber: aJulianDayNumber

	^ self basicNew
		ticks: aJulianDayNumber days ticks offset: Duration new;
		yourself