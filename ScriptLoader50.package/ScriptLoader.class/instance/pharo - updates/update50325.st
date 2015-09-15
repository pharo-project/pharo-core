update50325
	"self new update50325"
	self withUpdateLog: '16576 more tests for Primitives
	https://pharo.fogbugz.com/f/cases/16576

14294 request: should be in charge of its argument translation and not its clients
	https://pharo.fogbugz.com/f/cases/14294

16572 Fix "-override" method unload
	https://pharo.fogbugz.com/f/cases/16572'.
	self loadTogether: self script50325 merge: false.
	self flushCaches.
