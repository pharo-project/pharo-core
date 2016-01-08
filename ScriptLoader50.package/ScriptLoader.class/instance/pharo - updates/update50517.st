update50517
	"self new update50517"
	self withUpdateLog: '17316 "Push Down" instVar refactoring not working -> RBVariableEnvironment should implement #packages
	https://pharo.fogbugz.com/f/cases/17316

17344 QAEventCollector uninitialized
	https://pharo.fogbugz.com/f/cases/17344

17320 ShoreLine Reporter version 0.2.2
	https://pharo.fogbugz.com/f/cases/17320'.
	self loadTogether: self script50517 merge: false.
	self loadConfiguration: 'ShoreLineReporter' version: '0.2.2'.
QAEventCollector initialize .
	self flushCaches.
