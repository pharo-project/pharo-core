update30410
	"self new update30410"
	self withUpdateLog: '11544 Memory leak when using weak announcements with blocks
	https://pharo.fogbugz.com/f/cases/11544

(step 3/3)
'.
	self loadTogether: self script202 merge: false.
	self flushCaches.
