update40590
	"self new update40590"
	self withUpdateLog: '15269 a simple BooleanSlot example
	https://pharo.fogbugz.com/f/cases/15269

15234 monticello is not showing right status when working with branches
	https://pharo.fogbugz.com/f/cases/15234'.
	self loadTogether: self script590 merge: false.
	self flushCaches.
