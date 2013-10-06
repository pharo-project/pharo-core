update30380
	"self new update30380"
	self withUpdateLog: '11541 testInsettingByPointPairShouldNotProduceNegativeRectangle
	https://pharo.fogbugz.com/f/cases/11541
	
11538 remove #defaultMethodTrailer in TBehavior
	https://pharo.fogbugz.com/f/cases/11538
	

	'.
	self loadTogether: self script172 merge: false.
	self flushCaches.
