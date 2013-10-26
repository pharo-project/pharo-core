testAbsoluteFILE
	
	url := 'file:/etc/passwd#foo' asUrl.

	self assert: url scheme = 'file'.
	self assert: url pathSegments first = 'etc'.
	self assert: url pathSegments size = 2.	
	self assert: url fragment = 'foo'.