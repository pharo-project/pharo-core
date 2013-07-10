pharo - updates
update20612
	"self new update20612"
	self withUpdateLog: '10569 Backport 2.0: Better Interrruptionche
	https://pharo.fogbugz.com/f/cases/10569
	
10940 Backport 2.0: 10925 Use caching in Gofer	
	https://pharo.fogbugz.com/f/cases/10940
'.
	self loadTogether: self script585 merge: false.
	UserInterruptHandler allInstances first setInterruptKeyValue: $. asciiValue.
	self flushCaches.
