registerToTestAnnouncements
	"Since Test classes can be absent (in production, for instance, I use non-global references)"
	(Smalltalk at: #TestCase) historyAnnouncer weak
		on: (Smalltalk at: #TestCaseStarted) send: #testCaseStarted: to: self;
		on: (Smalltalk at: #TestSuiteEnded) send: #testRunned: to: self.