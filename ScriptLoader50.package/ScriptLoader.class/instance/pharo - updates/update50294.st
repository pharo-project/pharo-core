update50294
	"self new update50294"
	self withUpdateLog: '16442 ShoreLine Reporter version 0.2.0
	https://pharo.fogbugz.com/f/cases/16442

15307 Error message not clear when trying to create a class with a name without the first letter in upper case
	https://pharo.fogbugz.com/f/cases/15307'.
	self loadTogether: self script50294 merge: false.
	self loadConfiguration: 'ShoreLineReporter' version: 'stable'.self flushCaches.
