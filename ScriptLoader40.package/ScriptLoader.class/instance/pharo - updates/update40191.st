update40191
	"self new update40191"
	self withUpdateLog: '13911 Metacello test packages not properly unload
	https://pharo.fogbugz.com/f/cases/13911

'.
	self loadTogether: self script191 merge: false.
	self flushCaches.
self cleanRepositories.
