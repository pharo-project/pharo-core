update60182
	"self new update60182"
	self withUpdateLog: '18602 Dependency-Analyzer v1.19
	https://pharo.fogbugz.com/f/cases/18602

18925 cleanup InMidstOfFileinNotification
	https://pharo.fogbugz.com/f/cases/18925'.
	self loadTogether: self script60182 merge: false.
	self loadConfiguration: 'DependencyAnalyser' version: '1.19'.self flushCaches.
