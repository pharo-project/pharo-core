testPrintOn
	| cs rw |
	cs := 'a Stopwatch(suspended:0:00:00:00)' readStream.
	rw := ReadWriteStream on: ''.
	aStopwatch printOn: rw.
	self assert: rw contents = cs contents