update30408
	"self new update30408"
	self withUpdateLog: '11544 Memory leak when using weak announcements with blocks
	https://pharo.fogbugz.com/f/cases/11544

(step 1/2)'.
	self loadTogether: self script200 merge: false.
	WeakArray restartFinalizationProcess.
	self flushCaches.
