update30630
	"self new update30630"
	self withUpdateLog: '12364 Cherry pick does not work for slices
	https://pharo.fogbugz.com/f/cases/12364
	
12365 Critics browser menu not working
	https://pharo.fogbugz.com/f/cases/12365
	
12338 Cleanup on some Monticello related methods
	https://pharo.fogbugz.com/f/cases/12338'.
	self loadTogether: self script285 merge: false.
	self flushCaches.
