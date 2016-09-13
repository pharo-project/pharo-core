update60215
	"self new update60215"
	self withUpdateLog: '19074 comment all RBRefactoryChange classes
	https://pharo.fogbugz.com/f/cases/19074

19069 SUnit test suites should be run on singe TestExecutionEnvironment
	https://pharo.fogbugz.com/f/cases/19069'.
	self loadTogether: self script60215 merge: false.
	self flushCaches.
