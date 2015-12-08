update50490
	"self new update50490"
	self withUpdateLog: '17211 FastTable update (see description)
	https://pharo.fogbugz.com/f/cases/17211'.
	self loadTogether: self script50490 merge: false.
	self loadConfiguration: 'FastTable' version: '0.8.1'.self flushCaches.
