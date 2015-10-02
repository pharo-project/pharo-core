update50354
	"self new update50354"
	self withUpdateLog: '16686 remove ThemeIcons references in ShoreLine
	https://pharo.fogbugz.com/f/cases/16686

16673 Senders of... highlights wrong code segment
	https://pharo.fogbugz.com/f/cases/16673'.
	self loadTogether: self script50354 merge: false.
	self loadConfiguration: 'ShoreLineReporter' version: 'stable'.self flushCaches.
