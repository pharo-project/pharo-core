update30693
	"self new update30693"
	self withUpdateLog: '7542 NB system example
	Part1: add Class>>#newAnonymousSubclass
	https://pharo.fogbugz.com/f/cases/7542
	
12605 promptForCancel is sometimes unclosable
	https://pharo.fogbugz.com/f/cases/12605
	'.
	self loadTogether: self script346 merge: false.
	self flushCaches.
