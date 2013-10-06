pharo - updates
update20622
	"self new update20622"
	self withUpdateLog: '11639 Backport Pharo2.0: Memory leak when using weak announcements with blocks
	https://pharo.fogbugz.com/f/cases/11639
'.
	self loadTogether: self script595 merge: false.
	WeakArray restartFinalizationProcess.
	self flushCaches.
