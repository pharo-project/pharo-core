update60033
	"self new update60033"
	self withUpdateLog: '18311 smalllints classes vs. allClasses for RBClassEnvironment
	https://pharo.fogbugz.com/f/cases/18311'.
	self loadTogether: self script60033 merge: false.
	self flushCaches.
