update30376
	"self new update30376"
	self withUpdateLog: '11285 Handle MCMergeOrLoadWarning in config command line handler
	https://pharo.fogbugz.com/f/cases/11285
	'.
	self loadTogether: self script168 merge: false.
	self flushCaches.
