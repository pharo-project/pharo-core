system startup
startUp: resuming
	| newID |
	resuming ifFalse: [^self].
	DateAndTime localTimeZone: (TimeZone
		offset:  (Duration minutes: self current primTimezone)
		name: 'Local Time'
		abbreviation: 'LT').
	(self activated)
		ifTrue: [
			newID := self current determineLocaleID.
			newID ~= LocaleID current
				ifTrue: [self switchToID: newID]]