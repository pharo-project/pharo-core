testAbsoluteFILE3
	"Just a few selected tests for FileUrl, not complete by any means."


	{'file:'. 'file:/'. 'file://'} do: [:s |
	 	url := s asUrl.
		self assert: (url asString = 'file:///').
		self deny: url hasHost ].
	
	url := 'file://localhost/dir/file.txt' asUrl.
	self assert: (url asString = 'file://localhost/dir/file.txt').
	self assert: (url host = 'localhost').
	
	url := 'file://localhost/dir/file.txt' asUrl.
	self assert: (url asString = 'file://localhost/dir/file.txt').
	self assert: (url host = 'localhost').
	self assert: url isAbsolute.
	
	url := 'file:///dir/file.txt' asUrl.
	self assert: (url asString = 'file:///dir/file.txt').
	self deny: url hasHost