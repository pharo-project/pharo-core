update40369
	"self new update40369"
	self withUpdateLog: '14467 GTools version 2.0.1
	https://pharo.fogbugz.com/f/cases/14467'.
	self loadTogether: self script369 merge: false.
	self loadConfiguration: 'GTPlaygroundCore' version: '2.0.1'.self flushCaches.
