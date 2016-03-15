update50641
	"self new update50641"
	self withUpdateLog: '17793 Get coherent diff for metacello packages
	https://pharo.fogbugz.com/f/cases/17793

'.
	self loadTogether: self script50641 merge: false.
	self flushCaches.
self cleanRepositories.
