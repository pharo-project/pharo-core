update40187
	"self new update40187"
	self withUpdateLog: '13566 should remove this kind of isKindOf:
	https://pharo.fogbugz.com/f/cases/13566

'.
	self loadTogether: self script187 merge: false.
	self flushCaches.
self cleanRepositories.
