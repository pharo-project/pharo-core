update60001
	"self new update60001"
	self withUpdateLog: '18193 TxText cleaning
	https://pharo.fogbugz.com/f/cases/18193

'.
	self loadTogether: self script60001 merge: false.
	self flushCaches.
self cleanRepositories.
