registerToTestAnnouncements
	"Since Test classes can be absent (in production, for instance, I use non-global references)"
	(Smalltalk at: #TestCase) historyAnnouncer weak
		when: (Smalltalk at: #TestCaseStarted) send: #testCaseStarted: to: self;
		when: (Smalltalk at: #TestSuiteEnded) send: #testRunned: to: self.