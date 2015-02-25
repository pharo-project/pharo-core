update40510
	"self new update40510"
	self withUpdateLog: '- Scriptloader test'.
	self loadTogether: self script510 merge: false.
	self flushCaches.
self cleanRepositories.
