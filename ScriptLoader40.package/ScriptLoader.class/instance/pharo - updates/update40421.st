update40421
	"self new update40421"
	self withUpdateLog: '14650 Integrate GTools version 2.0.6
	https://pharo.fogbugz.com/f/cases/14650

14651 Integrate GTSpotter 1.0.2
	https://pharo.fogbugz.com/f/cases/14651'.
	self loadTogether: self script421 merge: false.
	self loadConfiguration: 'GTPlaygroundCore' version: '2.0.6'.
self loadConfiguration: 'GTSpotter' version: '1.0.2'.self flushCaches.
