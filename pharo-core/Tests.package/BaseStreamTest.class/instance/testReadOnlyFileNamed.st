testing
testReadOnlyFileNamed
	| testString fileName file |
	"Given"
	fileName := self name , 'test'.
	testString := 'testString'.
	"When"
	[self baseStreamType
		fileNamed: fileName
		do: [:streamType | streamType nextPut: testString].
	"Then"
	file := self baseStreamType readOnlyFileNamed: self name , 'test'.
	self assert: file next = testString.
	file close]
		ensure: [FileDirectory default
				deleteFileNamed: fileName
				ifAbsent: []]