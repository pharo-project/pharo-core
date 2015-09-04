testPrintOn
	| cs rw |
	cs := '1970-01-01T00:00:00+00:00' readStream.
	rw := ReadWriteStream on: ''.
	aDateAndTime printOn: rw.
	self assert: rw contents = cs contents.
	cs := 'a TimeZone(UTZ)' readStream.
	rw := ReadWriteStream on: ''.
	aTimeZone printOn: rw.
	self assert: rw contents = cs contents