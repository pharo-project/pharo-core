as yet unclassified
testReadWriteStreamNextNBug
	| aStream |
	aStream := ReadWriteStream on: String new.
	aStream nextPutAll: 'Hello World'.
	self shouldnt:[aStream next: 5] raise: Error.
