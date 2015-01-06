update40430
	"self new update40430"
	self withUpdateLog: '14672 ScriptLoader should not reset repositories
	https://pharo.fogbugz.com/f/cases/14672

14673 Avoidable DNU at each compilation
	https://pharo.fogbugz.com/f/cases/14673'.
	self loadTogether: self script430 merge: false.
	self flushCaches.
