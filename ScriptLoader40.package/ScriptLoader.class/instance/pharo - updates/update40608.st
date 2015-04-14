update40608
	"self new update40608"
	self withUpdateLog: 'new .sources'.
	self loadTogether: self script608 merge: false.
	self flushCaches.
self cleanRepositories.
