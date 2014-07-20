update40105
	"self new update40105"
	self withUpdateLog: '13609 WorkArea could be removed
	https://pharo.fogbugz.com/f/cases/13609

13615 Finish to split Tools
	https://pharo.fogbugz.com/f/cases/13615

'.
	self loadTogether: self script105 merge: false.
	self flushCaches.
self cleanRepositories.
