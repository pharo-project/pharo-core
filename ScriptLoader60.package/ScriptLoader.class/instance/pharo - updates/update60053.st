update60053
	"self new update60053"
	self withUpdateLog: '17990 Spur ephemerons must be integrated
	https://pharo.fogbugz.com/f/cases/17990'.
	self loadTogether: self script60053 merge: false.
	self flushCaches.
