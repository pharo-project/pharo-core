update50212
	"self new update50212"
	self withUpdateLog: '16100 #testCanCreateFiletreeRepositoryFromUrl is failing
	https://pharo.fogbugz.com/f/cases/16100

16110 Specify Window Menu Order
	https://pharo.fogbugz.com/f/cases/16110

16107 Merge of Rubric with repository needed
	https://pharo.fogbugz.com/f/cases/16107

16078 load new TxText version
	https://pharo.fogbugz.com/f/cases/16078

15651 Fix Gofer>>upgrade
	https://pharo.fogbugz.com/f/cases/15651

16072 QualityAssistant should depend on a configuration of Renraku and not use deprecated methods
	https://pharo.fogbugz.com/f/cases/16072'.
	self loadTogether: self script50212 merge: false.
	self loadConfiguration: 'Rubric' version: '1.17'.
self loadConfiguration: 'TxText' version: '2.12'.
self loadConfiguration: 'QualityAssistant' version: 'v1.1.3'.self flushCaches.
