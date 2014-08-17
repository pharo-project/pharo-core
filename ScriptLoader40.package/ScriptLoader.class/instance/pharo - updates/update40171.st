update40171
	"self new update40171"
	self withUpdateLog: '13526 System Browser Add Class menu item does not offer current class as a superclass
	https://pharo.fogbugz.com/f/cases/13526

'.
	self loadTogether: self script171 merge: false.
	self flushCaches.
self cleanRepositories.
