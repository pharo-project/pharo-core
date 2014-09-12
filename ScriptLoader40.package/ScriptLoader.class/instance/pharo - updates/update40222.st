update40222
	"self new update40222"
	self withUpdateLog: '13971 clean asReactiveVariable -> asValueHolder
	https://pharo.fogbugz.com/f/cases/13971

'.
	self loadTogether: self script222 merge: false.
	self flushCaches.
self cleanRepositories.
