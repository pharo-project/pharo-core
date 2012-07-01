testing
testStoreOn
	| cs rw |
	cs := '''2 January 2004 12:34:56 am'' asTimeStamp' readStream.
	rw := ReadWriteStream on: ''.
	aTimeStamp storeOn: rw.
	self assert: rw contents = cs contents