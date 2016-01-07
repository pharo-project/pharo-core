update50516
	"self new update50516"
	
MethodWidget resetMethodIconCache.
	self withUpdateLog: '17338 Align "up and down" icon centered
	https://pharo.fogbugz.com/f/cases/17338

17297 Remove Delay>>otherwise: (senders)
	https://pharo.fogbugz.com/f/cases/17297'.
	self loadTogether: self script50516 merge: false.
	self flushCaches.
