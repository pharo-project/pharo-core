testStoreOn
	| cs rw |
	cs := '''12:34:56 pm'' asTime' readStream.
	rw := ReadWriteStream on: ''.
	aTime storeOn: rw.
	self assert: rw contents = cs contents