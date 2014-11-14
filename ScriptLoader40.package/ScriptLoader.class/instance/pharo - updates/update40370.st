update40370
	"self new update40370"
	self withUpdateLog: '14473 GTools version 2.0.2 - bug fixes
	https://pharo.fogbugz.com/f/cases/14473'.
	self loadTogether: self script370 merge: false.
	self loadConfiguration: 'GTPlaygroundCore' version: '2.0.2'.self flushCaches.
