update40205
	"self new update40205"
	self withUpdateLog: '13954 Clean method announcements - step 2
	https://pharo.fogbugz.com/f/cases/13954

'.
	self loadTogether: self script205 merge: false.
	self flushCaches.
self cleanRepositories.
