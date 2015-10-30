update50414
	"self new update50414"
	self withUpdateLog: '16884 Update FastTable (see description to know more)
	https://pharo.fogbugz.com/f/cases/16884'.
	self loadTogether: self script50414 merge: false.
	self loadConfiguration: 'FastTable' version: '0.7.11'.self flushCaches.
