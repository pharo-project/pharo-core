update40513
	"self new update40513"
	self withUpdateLog: '14870 Update Zn Februari 2015
	https://pharo.fogbugz.com/f/cases/14870'.
	self loadTogether: self script513 merge: false.
	self loadConfiguration: 'ZincHTTPComponents' version: '2.6.2'.self flushCaches.
