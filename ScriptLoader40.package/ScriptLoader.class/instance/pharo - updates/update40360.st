update40360
	"self new update40360"
	self withUpdateLog: '14407 GTools version 2.0.0
	https://pharo.fogbugz.com/f/cases/14407'.
	self loadTogether: self script360 merge: false.
	self loadConfiguration: 'GTPlaygroundCore' version: '2.0.0'.self flushCaches.
