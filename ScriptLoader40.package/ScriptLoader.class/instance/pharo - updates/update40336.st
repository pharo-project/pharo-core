update40336
	"self new update40336"
	self withUpdateLog: '14337 Removing a trait usage raises an exception (2nd attempt)
	https://pharo.fogbugz.com/f/cases/14337'.
	self loadTogether: self script336 merge: false.
	self flushCaches.
