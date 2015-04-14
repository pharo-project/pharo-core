update40607
	"self new update40607"
	self withUpdateLog: '15229 Athens uses wrong <example> pragma
	https://pharo.fogbugz.com/f/cases/15229

15336 Writing a new .souces brakes class comments
	https://pharo.fogbugz.com/f/cases/15336'.
	self loadTogether: self script607 merge: false.
	self loadConfiguration: 'Athens' version: '3.2'.self flushCaches.
