asTimeStamp
	"Convert from obsolete TimeStamp format"
	self deprecated: 'use #asDateAndTime' on: '18 July 2014'  in: 'Pharo4'.
 	^ TimeStamp fromString: self