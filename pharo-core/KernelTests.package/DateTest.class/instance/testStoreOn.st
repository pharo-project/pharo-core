tests
testStoreOn

	| expected stream |
	expected := '''23 January 2004'' asDate'.
	stream := ReadWriteStream on: ''.
	january23rd2004 storeOn: stream.
	self assert: stream contents equals: expected.