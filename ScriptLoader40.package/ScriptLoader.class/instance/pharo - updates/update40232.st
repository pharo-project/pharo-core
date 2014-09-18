update40232
	"self new update40232"
	self withUpdateLog: '14032 Fix test cases and access singletons using slots
	https://pharo.fogbugz.com/f/cases/14032'.
	self loadTogether: self script232 merge: false.
	self flushCaches.
