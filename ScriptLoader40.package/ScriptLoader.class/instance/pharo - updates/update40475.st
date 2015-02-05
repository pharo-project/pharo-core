update40475
	"self new update40475"
	self withUpdateLog: '14866 Integrate GTools 
	https://pharo.fogbugz.com/f/cases/14866'.
	self loadTogether: self script475 merge: false.
	self loadConfiguration: 'GToolkitCore' version: 'development'.self flushCaches.
