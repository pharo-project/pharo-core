update30416
	"self new update30416"
	self withUpdateLog: '11645 missing visitSequence: method
	https://pharo.fogbugz.com/f/cases/11645
	
11646 Add Inspector Views / Types
	https://pharo.fogbugz.com/f/cases/11646
'.
	self loadTogether: self script208 merge: false.
	self flushCaches.
