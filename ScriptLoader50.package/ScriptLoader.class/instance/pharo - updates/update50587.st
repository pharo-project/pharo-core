update50587
	"self new update50587"
	self withUpdateLog: '17602 duplicated UI processes while running tests from Nautilus
	https://pharo.fogbugz.com/f/cases/17602

17630 CompiledMethodTest >> #testSelector asks for Author when run
	https://pharo.fogbugz.com/f/cases/17630

17599 Refectory change method added diff does not take into account class side methods
	https://pharo.fogbugz.com/f/cases/17599'.
	self loadTogether: self script50587 merge: false.
	self loadConfiguration: 'GTDebugger' version: '1.7'.self flushCaches.
