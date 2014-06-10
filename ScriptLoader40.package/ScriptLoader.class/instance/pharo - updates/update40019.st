update40019
	"self new update40019"
	self withUpdateLog: '13319 Small recategorization in Network-MIME to test money
	https://pharo.fogbugz.com/f/cases/13319
	
13262 UITestCase in wrong package
	https://pharo.fogbugz.com/f/cases/13262
'.
	self loadTogether: self script19 merge: false.
	self flushCaches.
