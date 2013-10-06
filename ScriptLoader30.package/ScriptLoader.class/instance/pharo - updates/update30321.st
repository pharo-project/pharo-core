update30321
	"self new update30321"
	self withUpdateLog: '11284 Split the kernel fix in two for integration
	https://pharo.fogbugz.com/f/cases/11284'.
	self loadTogether: self script114 merge: false.
	self flushCaches.
