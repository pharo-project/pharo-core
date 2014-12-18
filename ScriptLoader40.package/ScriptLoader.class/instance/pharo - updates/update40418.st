update40418
	"self new update40418"
	self withUpdateLog: '14635 ShoreLine Reporter version 0.1.1
	https://pharo.fogbugz.com/f/cases/14635'.
	self loadTogether: self script418 merge: false.
	self loadConfiguration: 'ShoreLineReporter' version: 'stable'.self flushCaches.
