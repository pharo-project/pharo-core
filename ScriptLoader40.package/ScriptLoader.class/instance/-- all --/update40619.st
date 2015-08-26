update40619
	"self new update40619"
	self withUpdateLog: '16362 Backport Pharo4: 16131 RBModifiesCollectionRule breaks methods AST when checking
	https://pharo.fogbugz.com/f/cases/16362

16069 backport Pharo4: 16067 remove #prepareDebuggerExample
	https://pharo.fogbugz.com/f/cases/16069

16081 Backport Pharo: 16080 RBImplementedButNotSent always true
	https://pharo.fogbugz.com/f/cases/16081

'.
	self loadTogether: self script619 merge: false.
	self flushCaches.
self cleanRepositories.
