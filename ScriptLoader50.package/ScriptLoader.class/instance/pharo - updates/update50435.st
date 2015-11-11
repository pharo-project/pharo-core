update50435
	"self new update50435"
	self withUpdateLog: '16990 Class definition got broken
	https://pharo.fogbugz.com/f/cases/16990

16989 simplify installing reflective method
	https://pharo.fogbugz.com/f/cases/16989'.
	self loadTogether: self script50435 merge: false.
	self flushCaches.
