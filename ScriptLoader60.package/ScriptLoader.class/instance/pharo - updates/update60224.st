update60224
	"self new update60224"
	self withUpdateLog: '19092 TestExecutionEnvironment should clean all intercepted processes collections when test completes
	https://pharo.fogbugz.com/f/cases/19092

19088 simplify newAnonymousSubclass in MetaClass
	https://pharo.fogbugz.com/f/cases/19088'.
	self loadTogether: self script60224 merge: false.
	self flushCaches.
