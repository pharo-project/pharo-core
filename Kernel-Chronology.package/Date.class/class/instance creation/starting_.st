starting: aDateAndTime

	^ super starting: (aDateAndTime midnight) duration: (Duration days: 1)
