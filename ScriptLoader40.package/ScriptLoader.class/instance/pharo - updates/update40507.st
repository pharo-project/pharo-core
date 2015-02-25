update40507
	"self new update40507"
	self withUpdateLog: '14987  ShoreLine Reporter version 0.1.2
	https://pharo.fogbugz.com/f/cases/14987'.
	self loadTogether: self script507 merge: false.
	self loadConfiguration: 'ShoreLineReporter' version: 'stable'.self flushCaches.
