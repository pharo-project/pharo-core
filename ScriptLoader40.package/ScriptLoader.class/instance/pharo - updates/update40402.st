update40402
	"self new update40402"
	self withUpdateLog: '14566 ShoreLine Reporter Integration
	https://pharo.fogbugz.com/f/cases/14566'.
	self loadTogether: self script402 merge: false.
	self loadConfiguration: 'ShoreLineReporter' version: 'stable'.self flushCaches.
