update40549
	"self new update40549"
	self withUpdateLog: '15106 Test, typo fix (and tiny cleanup) for Slots
	https://pharo.fogbugz.com/f/cases/15106

15108 prevent a potential error in PlatformResolver
	https://pharo.fogbugz.com/f/cases/15108'.
	self loadTogether: self script549 merge: false.
	self flushCaches.
