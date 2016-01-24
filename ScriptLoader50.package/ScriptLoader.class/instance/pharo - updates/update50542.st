update50542
	"self new update50542"
	self withUpdateLog: '17450 Add resize columns to fast table columns
	https://pharo.fogbugz.com/f/cases/17450'.
	self loadTogether: self script50542 merge: false.
	self loadConfiguration: 'FastTable' version: '0.9'.self flushCaches.
