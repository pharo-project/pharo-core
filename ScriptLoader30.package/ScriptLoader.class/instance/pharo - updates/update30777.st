update30777
	"self new update30777"
	self withUpdateLog: '12951 Skip KernelTests.Methods.BlockClosureTest.testOnForkErrorTakesLessThanOneSecond
	https://pharo.fogbugz.com/f/cases/12951

12938 Class "UnknownSystemChange" should be deprecated for Pharo 3.0
	https://pharo.fogbugz.com/f/cases/12938
	
'.
	self loadTogether: self script430 merge: false.
	self flushCaches.
