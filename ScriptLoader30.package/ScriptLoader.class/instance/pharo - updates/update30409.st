update30409
	"self new update30409"
	self withUpdateLog: '11544 Memory leak when using weak announcements with blocks
	https://pharo.fogbugz.com/f/cases/11544

(step 2/2)'.
	self loadTogether: self script201 merge: false.
	self flushCaches.
