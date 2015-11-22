update50458
	"self new update50458"
	self withUpdateLog: '16760 Dictionary>>= breaks when comparing identity and non-identity dictionaries
	https://pharo.fogbugz.com/f/cases/16760'.
	self loadTogether: self script50458 merge: false.
	self flushCaches.
