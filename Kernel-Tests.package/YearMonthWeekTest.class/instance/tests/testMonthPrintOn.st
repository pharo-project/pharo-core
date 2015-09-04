testMonthPrintOn
	| aMonth cs rw |
	aMonth := Month 
		starting: DateAndTime new
		duration: 31 days.
	cs := 'January 1901' readStream.
	rw := ReadWriteStream on: ''.
	aMonth printOn: rw.
	self assert: rw contents = cs contents