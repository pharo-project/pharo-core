update50448
	"self new update50448"
	self withUpdateLog: '17029 New FastTable configuration (see description)
	https://pharo.fogbugz.com/f/cases/17029

17026 Code critique should ignore meta link globals
	https://pharo.fogbugz.com/f/cases/17026'.
	self loadTogether: self script50448 merge: false.
	self loadConfiguration: 'FastTable' version: '0.8.0'.self flushCaches.
