update50089
	"self new update50089"
	self withUpdateLog: '15664 Merge category method into group in RBRule 
	https://pharo.fogbugz.com/f/cases/15664

'.
	self loadTogether: self script50089 merge: false.
	self flushCaches.
self cleanRepositories.
