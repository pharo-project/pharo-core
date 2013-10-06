testYearPrintOn
	| aYear cs rw |
	aYear := Year 
		starting: DateAndTime new
		duration: 365 days.
	cs := 'a Year (1901)' readStream.
	rw := ReadWriteStream on: ''.
	aYear printOn: rw.
	self assert: rw contents = cs contents