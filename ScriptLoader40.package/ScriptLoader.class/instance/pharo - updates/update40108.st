update40108
	"self new update40108"
	self withUpdateLog: '13620 LinkWrapper Slot: first working version
	https://pharo.fogbugz.com/f/cases/13620

13611 add MorphicCoreUIManager
	https://pharo.fogbugz.com/f/cases/13611

13619 Small cleanup related to Explorer
	https://pharo.fogbugz.com/f/cases/13619

'.
	self loadTogether: self script108 merge: false.
	self flushCaches.
self cleanRepositories.
