testPrintOn
	| cs rw |
	cs := 'a Timespan(2005-01-01T00:00:00+00:00D7:00:00:00)' readStream.
	rw := ReadWriteStream on: ''.
	aTimespan printOn: rw.
	self assert: rw contents = cs contents