update50309
	"self new update50309"
	self withUpdateLog: '16499 Reflectivity and Primitive: Unwrap when destroying Twin, copy over links to wrapper
	https://pharo.fogbugz.com/f/cases/16499'.
	self loadTogether: self script50309 merge: false.
	self flushCaches.
