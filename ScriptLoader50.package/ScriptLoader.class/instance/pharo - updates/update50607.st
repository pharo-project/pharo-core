update50607
	"self new update50607"
	self withUpdateLog: '17638 Browsing calls on BoxedFloat64 shows methods with reference to Float in the code
	https://pharo.fogbugz.com/f/cases/17638

'.
	self loadTogether: self script50607 merge: false.
	Smalltalk image recompile.
	self flushCaches.
self cleanRepositories.
