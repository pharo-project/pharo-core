update40170
	"self new update40170"
	self withUpdateLog: '13311 Improve Object>>explicitRequirement behavior for methods overriden by a superclass
	https://pharo.fogbugz.com/f/cases/13311

'.
	self loadTogether: self script170 merge: false.
	self flushCaches.
self cleanRepositories.
