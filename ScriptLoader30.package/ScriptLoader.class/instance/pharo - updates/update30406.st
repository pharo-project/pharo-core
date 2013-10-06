update30406
	"self new update30406"
	self withUpdateLog: '7537 Use UTC primitives for Time
	https://pharo.fogbugz.com/f/cases/7537'.
	self loadTogether: self script198 merge: false.
	self flushCaches.
