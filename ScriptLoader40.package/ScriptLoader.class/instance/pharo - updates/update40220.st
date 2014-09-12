update40220
	"self new update40220"
	self withUpdateLog: '13901 move DoubleLinkedListTests, LRUCacheTests and TTLCacheTests from Tests
	https://pharo.fogbugz.com/f/cases/13901

13996 RBSentNotImplementedRule wrong
	https://pharo.fogbugz.com/f/cases/13996

'.
	self loadTogether: self script220 merge: false.
	self flushCaches.
self cleanRepositories.
