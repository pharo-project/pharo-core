update50753
	"self new update50753"
	self withUpdateLog: '18188 localHostName is not guarded against uninitialized network
	https://pharo.fogbugz.com/f/cases/18188

'.
	self loadTogether: self script50753 merge: false.
	self flushCaches.
self cleanRepositories.
