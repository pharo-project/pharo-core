update40473
	"self new update40473"
	self withUpdateLog: '14850 Integrate GTools #development
	https://pharo.fogbugz.com/f/cases/14850'.
	self loadTogether: self script473 merge: false.
	self loadConfiguration: 'GToolkitCore' version: 'development'.self flushCaches.
