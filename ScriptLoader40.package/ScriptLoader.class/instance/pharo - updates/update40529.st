update40529
	"self new update40529"
	self withUpdateLog: '15009 allow to set title in RemotesManager
	https://pharo.fogbugz.com/f/cases/15009

12970 16 steps to get through #halt
	https://pharo.fogbugz.com/f/cases/12970

'.
	self loadTogether: self script529 merge: false.
	self flushCaches.
self cleanRepositories.
