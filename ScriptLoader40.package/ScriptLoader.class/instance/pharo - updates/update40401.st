update40401
	"self new update40401"
	self withUpdateLog: '13256 Pharo3 Theme when rounded corners are chosen is not consistent
	https://pharo.fogbugz.com/f/cases/13256

6859 Finder not refreshing for new packages/classes
	https://pharo.fogbugz.com/f/cases/6859

10797 Nautilus should exclude abstract TestCases
	https://pharo.fogbugz.com/f/cases/10797'.
	self loadTogether: self script401 merge: false.
	self flushCaches.
