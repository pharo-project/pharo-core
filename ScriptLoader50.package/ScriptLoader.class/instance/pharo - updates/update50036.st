update50036
	"self new update50036"
	self withUpdateLog: '15431 add combination
	https://pharo.fogbugz.com/f/cases/15431

15199 remove multi methods edition from Nautilus
	https://pharo.fogbugz.com/f/cases/15199'.
	self loadTogether: self script645 merge: false.
	self flushCaches.
