update50527
	"self new update50527"
	self withUpdateLog: '17379 FastTable mouse over on highlighted item
	https://pharo.fogbugz.com/f/cases/17379

17386 Nautilus test notification should show test results
	https://pharo.fogbugz.com/f/cases/17386'.
	self loadTogether: self script50527 merge: false.
	self loadConfiguration: 'FastTable' version: '0.8.3'.self flushCaches.
