update40094
	"self new update40094"
	self withUpdateLog: '13275 RBSmalllintChecker checks classes not defined in environment
	https://pharo.fogbugz.com/f/cases/13275

13577 UIManager should not use WorldState for defer:
	https://pharo.fogbugz.com/f/cases/13577

13575 TreeModel in checklist mode gives unchecked items hardcoded color
	https://pharo.fogbugz.com/f/cases/13575

13571 Something is completely broken regarding Slice submission
	https://pharo.fogbugz.com/f/cases/13571

'.
	self loadTogether: self script94 merge: false.
	self flushCaches.
self cleanRepositories.
