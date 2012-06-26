tests
testHasOption
	self assert: (self commandLine hasOption: #option1).
	self assert: (self commandLine hasOption: #option4).
	self deny: (self commandLine hasOption: #foo).