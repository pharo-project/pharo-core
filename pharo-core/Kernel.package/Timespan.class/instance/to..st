squeak protocol
to: anEnd
	"Answer an Timespan. anEnd must be aDateAndTime or a Timespan" 

	^ Timespan starting: (self start) ending: (anEnd asDateAndTime). 