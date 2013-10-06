update30385
	"self new update30385"
	self withUpdateLog: '11545 class side definition not working
	https://pharo.fogbugz.com/f/cases/11545
	
10782 Nautilus: Difficult to recategorize method via DND
	https://pharo.fogbugz.com/f/cases/10782
	
11560 TestValueWithinFix tests failing
	https://pharo.fogbugz.com/f/cases/11560
	
'.
	self loadTogether: self script177 merge: false.
	self flushCaches.
