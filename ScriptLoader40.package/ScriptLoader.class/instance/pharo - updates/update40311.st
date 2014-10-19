update40311
	"self new update40311"
	self withUpdateLog: '14228 critic rules running on all methods of a class extended by a package
	https://pharo.fogbugz.com/f/cases/14228'.
	self loadTogether: self script311 merge: false.
	self flushCaches.
