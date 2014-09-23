update40245
	"self new update40245"
	self withUpdateLog: '11996 Wrong exception handler problem (4/5)
	https://pharo.fogbugz.com/f/cases/11996

'.
	self loadTogether: self script245 merge: false.
	self flushCaches.
self cleanRepositories.
