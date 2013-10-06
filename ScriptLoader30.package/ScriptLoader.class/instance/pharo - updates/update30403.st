update30403
	"self new update30403"
	self withUpdateLog: '11572 Cannot create new protocols
	https://pharo.fogbugz.com/f/cases/11572
	
11471 Number >> #asDuration should default to seconds
	https://pharo.fogbugz.com/f/cases/11471/
'.
	self loadTogether: self script195 merge: false.
	self flushCaches.
