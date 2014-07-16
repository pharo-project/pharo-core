update40088
	"self new update40088"
	self withUpdateLog: '13564 Fix all users of TimeStamp: remove Tests, change two remaining clients
	https://pharo.fogbugz.com/f/cases/13564

13562 remove UUIDGeneration seed generation from sound input
	https://pharo.fogbugz.com/f/cases/13562

13561 remove some unload class methods
	https://pharo.fogbugz.com/f/cases/13561

'.
	self loadTogether: self script88 merge: false.
	self flushCaches.
self cleanRepositories.
