update40406
	"self new update40406"
	self withUpdateLog: '14588 Integrate GTools version 2.0.3
	https://pharo.fogbugz.com/f/cases/14588'.
	self loadTogether: self script406 merge: false.
	self loadConfiguration: 'GTPlaygroundCore' version: '2.0.3'.self flushCaches.
