update40404
	"self new update40404"
	self withUpdateLog: '14579 update Athens
	https://pharo.fogbugz.com/f/cases/14579'.
	self loadTogether: self script404 merge: false.
	self loadConfiguration: 'Athens' version: '2.7'.self flushCaches.
