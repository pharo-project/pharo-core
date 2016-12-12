update50765
	"self new update50765"
	self withUpdateLog: '19435 Silently ignore loading DelayScheduler setting when its the same as existing (Pharo 5 backport)
	https://pharo.fogbugz.com/f/cases/19435'.
	self loadTogether: self script50765 merge: false.
	self flushCaches.
