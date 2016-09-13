update60213
	"self new update60213"
	self withUpdateLog: '19076 New assert extension to compare floats by closeTo
	https://pharo.fogbugz.com/f/cases/19076

19068 SUnit failed tests during command line or monkey run
	https://pharo.fogbugz.com/f/cases/19068'.
	self loadTogether: self script60213 merge: false.
	self flushCaches.
