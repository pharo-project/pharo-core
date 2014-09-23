update40242
	"self new update40242"
	self withUpdateLog: '11996 Wrong exception handler problem (Part1/5)
	https://pharo.fogbugz.com/f/cases/11996

'.
	self loadTogether: self script242 merge: false.
	self flushCaches.
self cleanRepositories.
