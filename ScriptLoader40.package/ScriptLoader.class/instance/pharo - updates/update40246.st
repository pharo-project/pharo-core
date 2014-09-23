update40246
	"self new update40246"
	self withUpdateLog: '11996 Wrong exception handler problem (parrt 5/5)
	https://pharo.fogbugz.com/f/cases/11996

'.
	self loadTogether: self script246 merge: false.
	self flushCaches.
self cleanRepositories.
