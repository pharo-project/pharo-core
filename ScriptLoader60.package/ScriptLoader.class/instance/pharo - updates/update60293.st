update60293
	"self new update60293"
	self withUpdateLog: '19348 apply automatic deprecation rewrite because of 19347
	https://pharo.fogbugz.com/f/cases/19348'.
	self loadTogether: self script60293 merge: false.
	self flushCaches.
