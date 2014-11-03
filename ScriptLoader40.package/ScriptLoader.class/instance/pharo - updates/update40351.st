update40351
	"self new update40351"
	self withUpdateLog: '14246 CompiledMethod>>hash can produce clashes
	https://pharo.fogbugz.com/f/cases/14246

14379 Code critique pass Spec-Tools
	https://pharo.fogbugz.com/f/cases/14379

14375 Random #obsoleteClasses test failures
	https://pharo.fogbugz.com/f/cases/14375'.
	self loadTogether: self script351 merge: false.
	self flushCaches.
