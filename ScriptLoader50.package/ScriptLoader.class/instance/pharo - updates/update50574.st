update50574
	"self new update50574"
	self withUpdateLog: '17281  Failing test: BlockClosureTest>>#testTallyInstructions
	https://pharo.fogbugz.com/f/cases/17281

17553 missing classes in startup list
	https://pharo.fogbugz.com/f/cases/17553'.
	self loadTogether: self script50574 merge: false.
	self loadConfiguration: 'SessionManager' version: '1.1'.
SessionManager default: SessionManager initializedSessionManager.
SessionManager default installNewSession.
UUIDGenerator startUp.
	self flushCaches.
