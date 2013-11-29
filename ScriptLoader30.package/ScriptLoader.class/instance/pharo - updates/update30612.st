update30612
	"self new update30612"
	self withUpdateLog: '12274 ClassFactoryForTestCase do not clean properly created behaviors
	https://pharo.fogbugz.com/f/cases/12274
	
12287 ChangesBrowser on refactoring does not well display diffs
	https://pharo.fogbugz.com/f/cases/12287
'.
	self loadTogether: self script267 merge: false.
	self flushCaches.
