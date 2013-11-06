update30549
	"self new update30549"
	self withUpdateLog: '12078 Move more deprecated methods to Deprecated30 package
	https://pharo.fogbugz.com/f/cases/12078'.
	self loadTogether: self script204 merge: false.
	self flushCaches.
