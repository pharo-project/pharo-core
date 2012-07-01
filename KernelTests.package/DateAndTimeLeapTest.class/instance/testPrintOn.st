testing
testPrintOn
	| cs rw |
	cs := '2004-02-29T13:33:00+02:00' readStream.
	rw := ReadWriteStream on: ''.
	aDateAndTime printOn: rw.
	self assert: rw contents = cs contents.
	cs := 'a TimeZone(UTC)' readStream.
	rw := ReadWriteStream on: ''.
	aTimeZone printOn: rw.
	self assert: rw contents = cs contents