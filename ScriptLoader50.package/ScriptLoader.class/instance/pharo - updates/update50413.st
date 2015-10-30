update50413
	"self new update50413"
	self withUpdateLog: '16892 Zn Update October 2015
	https://pharo.fogbugz.com/f/cases/16892'.
	self loadTogether: self script50413 merge: false.
	self loadConfiguration: 'ZincHTTPComponents' version: '2.6.7'.self flushCaches.
