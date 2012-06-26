test printing
testPrintOn
	| cs rw |
	cs := '12:34:56 pm' readStream.
	rw := ReadWriteStream on: ''.
	aTime printOn: rw.
	self assert: rw contents = cs contents