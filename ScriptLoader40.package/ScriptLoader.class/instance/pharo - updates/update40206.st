update40206
	"self new update40206"
	self withUpdateLog: '13956 Clean method announcements - step 3
	https://pharo.fogbugz.com/f/cases/13956

'.
	self loadTogether: self script206 merge: false.
	self flushCaches.
self cleanRepositories.
