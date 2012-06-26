tests - comma and delimiter
testAsStringOnDelimiterLastEmpty

	| delim emptyStream |
	delim := ', '.
	emptyStream := ReadWriteStream on: ''.
	self empty asStringOn: emptyStream delimiter: delim last:'and'.
	self assert: emptyStream contents = ''.
