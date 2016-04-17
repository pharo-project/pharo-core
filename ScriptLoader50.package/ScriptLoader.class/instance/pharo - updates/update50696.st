update50696
	"self new update50696"
	self withUpdateLog: '18009 STON Update April 2016
	https://pharo.fogbugz.com/f/cases/18009'.
	self loadTogether: self script50696 merge: false.
	self loadConfiguration: 'Ston' version: '0.18'.self flushCaches.
