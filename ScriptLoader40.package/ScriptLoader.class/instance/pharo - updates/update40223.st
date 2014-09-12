update40223
	"self new update40223"
	self withUpdateLog: '13924 Adding a new method to a trait triggers a MethodRecategorized announcement for each user
	https://pharo.fogbugz.com/f/cases/13924

'.
	self loadTogether: self script223 merge: false.
	self flushCaches.
self cleanRepositories.
