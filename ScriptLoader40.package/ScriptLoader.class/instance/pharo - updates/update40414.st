update40414
	"self new update40414"
	self withUpdateLog: '10287 Nil out deferredStartupActions before leaving executeDeferredStartupActions:
	https://pharo.fogbugz.com/f/cases/10287'.
	self loadTogether: self script414 merge: false.
	self flushCaches.
