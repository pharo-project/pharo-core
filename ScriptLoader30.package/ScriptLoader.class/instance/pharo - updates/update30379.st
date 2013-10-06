update30379
	"self new update30379"
	self withUpdateLog: '11540 Monticello unique names should be calculated in destination repository, not all
	https://pharo.fogbugz.com/f/cases/11540
'.
	self loadTogether: self script171 merge: false.
	self flushCaches.
