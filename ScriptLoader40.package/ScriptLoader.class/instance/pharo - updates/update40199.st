update40199
	"self new update40199"
	self withUpdateLog: '13947 fix testObsoleteClasses
	https://pharo.fogbugz.com/f/cases/13947

'.
	self loadTogether: self script199 merge: false.
	self flushCaches.
self cleanRepositories.
