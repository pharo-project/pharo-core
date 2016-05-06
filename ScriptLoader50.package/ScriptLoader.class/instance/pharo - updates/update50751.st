update50751
	"self new update50751"
	self withUpdateLog: '18167 NewValueHolder class>value: should use rawValue:
	https://pharo.fogbugz.com/f/cases/18167'.
	self loadTogether: self script50751 merge: false.
	self flushCaches.
