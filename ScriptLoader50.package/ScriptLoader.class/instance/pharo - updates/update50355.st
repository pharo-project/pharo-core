update50355
	"self new update50355"
	self withUpdateLog: '16602 Only get  a basic command line handler in the bootstrap (avoid startup preferences)
	https://pharo.fogbugz.com/f/cases/16602'.
	self loadTogether: self script50355 merge: false.
	self flushCaches.
