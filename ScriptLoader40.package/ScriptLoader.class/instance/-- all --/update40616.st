update40616
	"self new update40616"
	self withUpdateLog: '15680 Backport 4.0: Class rename does not update references in class-side methods
	https://pharo.fogbugz.com/f/cases/15680'.
	self loadTogether: self script616 merge: false.
	self flushCaches.
