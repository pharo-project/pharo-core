update40463
	"self new update40463"
	self withUpdateLog: '14797 Rename AbstractInstanceVariableSlot to IndexedSlot
	https://pharo.fogbugz.com/f/cases/14797

'.
	self loadTogether: self script463 merge: false.
	self flushCaches.
self cleanRepositories.
