update30739
	"self new update30739"
	self withUpdateLog: '12772 Missing example methods in Spec
	https://pharo.fogbugz.com/f/cases/12772

12309 Manifest-Core should be cleaned
	https://pharo.fogbugz.com/f/cases/12309

'.
	self loadTogether: self script392 merge: false.
	self flushCaches.
