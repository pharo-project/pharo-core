update30828
	"self new update30828"
	self withUpdateLog: '13218 Fix issue with custom bindings
	https://pharo.fogbugz.com/f/cases/13218

13195 testAllSetsAreHealthy fails on ci server for mac only
	https://pharo.fogbugz.com/f/cases/13195

11082 UndefinedObject should implement #allSuperclassesDo:
	https://pharo.fogbugz.com/f/cases/11082

'.
	self loadTogether: self script481 merge: false.
	self flushCaches.
