update40580
	"self new update40580"
	self withUpdateLog: '15210 load new configuration of Athens 3.1
	https://pharo.fogbugz.com/f/cases/15210'.
	self loadTogether: self script580 merge: false.
	self loadConfiguration: 'Athens' version: '3.1'.self flushCaches.
