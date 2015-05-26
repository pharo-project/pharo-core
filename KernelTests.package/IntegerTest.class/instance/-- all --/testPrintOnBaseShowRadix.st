testPrintOnBaseShowRadix
	| s |
	s := ReadWriteStream on: ''.
	123 printOn: s base: 10 showRadix: false.
	self assert: (s contents = '123').
	
	s := ReadWriteStream on: ''.
	123 printOn: s base: 10 showRadix: true.
	self assert: (s contents = '10r123').
	
	s := ReadWriteStream on: ''.
	123 printOn: s base: 8 showRadix: false.
	self assert: (s contents = '173').
	
	s := ReadWriteStream on: ''.
	123 printOn: s base: 8 showRadix: true.
	self assert: (s contents = '8r173').