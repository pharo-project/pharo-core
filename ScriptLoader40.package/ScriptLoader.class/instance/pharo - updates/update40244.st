update40244
	"self new update40244"
	self withUpdateLog: '11996 Wrong exception handler problem (Part3)
	https://pharo.fogbugz.com/f/cases/11996

'.
	self loadTogether: self script244 merge: false.
	self flushCaches.
self cleanRepositories.
