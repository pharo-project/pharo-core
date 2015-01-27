update40464
	"self new update40464"
	self withUpdateLog: '14788 UpdateStreamer>>path: does not make any sense
	https://pharo.fogbugz.com/f/cases/14788

'.
	self loadTogether: self script464 merge: false.
	self flushCaches.
self cleanRepositories.
