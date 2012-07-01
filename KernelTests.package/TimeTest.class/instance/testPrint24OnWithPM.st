test printing
testPrint24OnWithPM
	| cs rw |
	cs := '12:34:56 pm' readStream.
	rw := ReadWriteStream on: ''.
	aTime 
		print24: false
		on: rw.
	^ self assert: rw contents = cs contents