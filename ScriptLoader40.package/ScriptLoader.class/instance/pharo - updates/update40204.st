update40204
	"self new update40204"
	self withUpdateLog: '13953 Clean method announcements - step 1
	https://pharo.fogbugz.com/f/cases/13953

'.
	self loadTogether: self script204 merge: false.
	self flushCaches.
self cleanRepositories.
