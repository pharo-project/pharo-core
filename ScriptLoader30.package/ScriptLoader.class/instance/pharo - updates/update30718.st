update30718
	"self new update30718"
	self withUpdateLog: '12519 Codepanel in ByteCode view should be read only
	https://pharo.fogbugz.com/f/cases/12519

12693 TasklistMorph Navigation Cleanup
	https://pharo.fogbugz.com/f/cases/12693

12705 Better implementation of a method from case 12163
	https://pharo.fogbugz.com/f/cases/12705

'.
	self loadTogether: self script371 merge: false.
	self flushCaches.
