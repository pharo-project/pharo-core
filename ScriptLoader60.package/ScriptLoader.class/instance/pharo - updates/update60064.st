update60064
	"self new update60064"
	self withUpdateLog: '18427 System-CommandLineHandler should be abstract and not extend particular command line handlers
	https://pharo.fogbugz.com/f/cases/18427

18394 change some more keymapping definitions in PharoShortcuts
	https://pharo.fogbugz.com/f/cases/18394

18412 QAViewedDiff(Object)>>doesNotUnderstand: #critic:
	https://pharo.fogbugz.com/f/cases/18412'.
	self loadTogether: self script60064 merge: false.
	self loadConfiguration: 'FlatQA' version: 'v3.0.2'.self flushCaches.
