update40124
	"self new update40124"
	self withUpdateLog: '13684 missing code completion in Spotlight
	https://pharo.fogbugz.com/f/cases/13684

13519 Problem when printing heaps
	https://pharo.fogbugz.com/f/cases/13519
	(fixed)
	
13571 Something is completely broken regarding Slice submission
	https://pharo.fogbugz.com/f/cases/13571
	(reverted)'.
	self loadTogether: self script124 merge: false.
	self flushCaches.
self cleanRepositories.
