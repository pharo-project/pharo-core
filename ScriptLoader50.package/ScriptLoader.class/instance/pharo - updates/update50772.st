update50772
	"self new update50772"
	self withUpdateLog: '19974 backport Traits methods flattened (case 19938)
	https://pharo.fogbugz.com/f/cases/19974'.
	self loadTogether: self script50772 merge: false.
	self flushCaches.
