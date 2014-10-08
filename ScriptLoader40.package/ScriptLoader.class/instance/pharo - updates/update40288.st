update40288
	"self new update40288"
	self withUpdateLog: '14175 GTools version 1.0.6
	https://pharo.fogbugz.com/f/cases/14175'.
	self loadTogether: self script288 merge: false.
	self loadConfiguration: 'GTPlayground' version: '1.0.6'.self flushCaches.
