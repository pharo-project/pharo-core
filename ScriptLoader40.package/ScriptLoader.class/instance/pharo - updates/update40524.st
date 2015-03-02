update40524
	"self new update40524"
	self withUpdateLog: '14988 failing test testErrorCodeNotFound
	https://pharo.fogbugz.com/f/cases/14988

15002 Rename instance variable is broken 
	https://pharo.fogbugz.com/f/cases/15002

'.
	self loadTogether: self script524 merge: false.
	self flushCaches.
self cleanRepositories.
