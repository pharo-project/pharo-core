update40559
	"self new update40559"
	self withUpdateLog: '15139 Update Zn+Zdc March 2015
	https://pharo.fogbugz.com/f/cases/15139'.
	self loadTogether: self script559 merge: false.
	self loadConfiguration: 'ZincHTTPComponents' version: '2.6.3'.self flushCaches.
