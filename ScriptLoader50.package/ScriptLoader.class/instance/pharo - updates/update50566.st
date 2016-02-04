update50566
	"self new update50566"
	self withUpdateLog: '17521 recategorizing uncategorised method
	https://pharo.fogbugz.com/f/cases/17521

17522 Failing test: ReleaseTest>>#testInstalledMethodsWithIncorrectTrailerKind
	https://pharo.fogbugz.com/f/cases/17522

17479 Interval class comment mixes step/stop when explaining Instance Variables
	https://pharo.fogbugz.com/f/cases/17479'.
	self loadTogether: self script50566 merge: false.
	
OSEnvironment compile: (OSEnvironment>>#getEnv:) sourceCode classified:
 (OSEnvironment>>#getEnv:) category.
	self flushCaches.
