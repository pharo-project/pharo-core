update50015
	"self new update50015"
	self withUpdateLog: '15420 Forward port 15417 TestRunner does not offer the RunCoverage functionality
	https://pharo.fogbugz.com/f/cases/15420

15419 Pharo3Theme installFullTheme background is too dark 
	https://pharo.fogbugz.com/f/cases/15419

15424 #removeInstVarNamed: should just call #removeSlot:
	https://pharo.fogbugz.com/f/cases/15424'.
	self loadTogether: self script624 merge: false.
	self flushCaches.
