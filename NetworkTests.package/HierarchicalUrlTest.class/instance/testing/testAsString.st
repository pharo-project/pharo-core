testAsString
	self assert: 'ftp://localhost/path/to/file?aQuery' asUrl asString = 'ftp://localhost/path/to/file?aQuery'.