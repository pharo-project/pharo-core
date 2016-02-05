update50567
	"self new update50567"
	self withUpdateLog: '17526 growMemoryByAtLeast: duplicated
	https://pharo.fogbugz.com/f/cases/17526

17530 fix testDangerousClassesConditions
	https://pharo.fogbugz.com/f/cases/17530

17242 String>>compare:caseSensitive seems to be failing for extended charset comparisons
	https://pharo.fogbugz.com/f/cases/17242'.
	self loadTogether: self script50567 merge: false.
	
String initialize.
	self flushCaches.
