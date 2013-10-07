update30461
	"self new update30461"
	self withUpdateLog: '11808 Small critic cleanup if Ring
	https://pharo.fogbugz.com/f/cases/11808
	
11809 Fix failing tests SystemNavigation
	https://pharo.fogbugz.com/f/cases/11809
	
11788 Trivial critic cleanup of Monticello
	https://pharo.fogbugz.com/f/cases/11788
'.
	self loadTogether: self script116 merge: false.
	self flushCaches.
