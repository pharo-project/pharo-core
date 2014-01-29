update30728
	"self new update30728"
	self withUpdateLog: '12731 Traits modifications cause a DNU
	https://pharo.fogbugz.com/f/cases/12731

'.
	self loadTogether: self script381 merge: false.
	self flushCaches.
