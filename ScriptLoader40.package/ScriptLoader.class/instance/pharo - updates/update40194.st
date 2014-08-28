update40194
	"self new update40194"
	self withUpdateLog: '13897 check for argument assignments (block and method argumentts)
	https://pharo.fogbugz.com/f/cases/13897

'.
	self loadTogether: self script194 merge: false.
	self flushCaches.
self cleanRepositories.
