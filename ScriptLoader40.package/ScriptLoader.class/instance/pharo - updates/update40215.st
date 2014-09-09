update40215
	"self new update40215"
	self withUpdateLog: '13421 Problem in Monticello and the cached packages
	https://pharo.fogbugz.com/f/cases/13421

'.
	self loadTogether: self script215 merge: false.
	self flushCaches.
self cleanRepositories.
