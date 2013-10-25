update30526
	"self new update30526"
	self withUpdateLog: '11521 Error with soundEnabled:
	https://pharo.fogbugz.com/f/cases/11521
	
12010 trivial cleanup in Nautilus
	https://pharo.fogbugz.com/f/cases/12010
	
11968 failing tests in RPackageReadOnlyCompleteSetupTest
	https://pharo.fogbugz.com/f/cases/11968/
	'.
	self loadTogether: self script181 merge: false.
	self flushCaches.
