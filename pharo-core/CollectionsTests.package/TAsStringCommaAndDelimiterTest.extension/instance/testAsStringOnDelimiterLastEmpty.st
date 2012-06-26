tests - as string comma delimiter sequenceable
testAsStringOnDelimiterLastEmpty

	| delim emptyStream |
	delim := ', '.
	emptyStream := ReadWriteStream on: ''.
	self empty asStringOn: emptyStream delimiter: delim last:'and'.
	self assert: emptyStream contents = ''.
