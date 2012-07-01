testing
testAsYear
	self assert: aDateAndTime asYear =   (Year starting: '02-29-2004' asDate).  
	self deny: aDateAndTime asYear =   (Year starting: '01-01-2004' asDate)  
