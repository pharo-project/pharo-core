update30516
	"self new update30516"
	self withUpdateLog: '11694 Trait methods wrong after recompiling the image
	https://pharo.fogbugz.com/f/cases/11694
	'.
	self loadTogether: self script171 merge: false.
	self flushCaches.
