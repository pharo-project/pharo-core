test printing
testPrint24On
	| cs rw |
	cs := '12:34:56' readStream.
	rw := ReadWriteStream on: ''.
	aTime 
		print24: true
		on: rw.
	self assert: rw contents = cs contents