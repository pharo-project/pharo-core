update40578
	"self new update40578"
	self withUpdateLog: '15222 Integrate GTools
	https://pharo.fogbugz.com/f/cases/15222'.
	self loadTogether: self script578 merge: false.
	self loadConfiguration: 'GToolkitCore' version: 'development'.self flushCaches.
