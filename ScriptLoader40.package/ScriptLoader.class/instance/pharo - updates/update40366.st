update40366
	"self new update40366"
	self withUpdateLog: '14450 Refactoring of MorphicEventDispatcher
	https://pharo.fogbugz.com/f/cases/14450

14463 cleaning post translated clean
	https://pharo.fogbugz.com/f/cases/14463

'.
	self loadTogether: self script366 merge: false.
	self flushCaches.
self cleanRepositories.
