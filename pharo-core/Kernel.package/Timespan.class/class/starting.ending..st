squeak protocol
starting: startDateAndTime ending: endDateAndTime

	^ self 
		starting: startDateAndTime 
		duration: (endDateAndTime asDateAndTime - startDateAndTime). 