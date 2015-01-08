update40436
	"self new update40436"
	self withUpdateLog: '14693 Spotter version 1.0.6
	https://pharo.fogbugz.com/f/cases/14693

14692 GTools version 2.0.8
	https://pharo.fogbugz.com/f/cases/14692'.
	self loadTogether: self script436 merge: false.
	self loadConfiguration: 'GTSpotter' version: '1.0.6'.
self loadConfiguration: 'GTPlaygroundCore' version: '2.0.8'.self flushCaches.
