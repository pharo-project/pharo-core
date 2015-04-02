update40592
	"self new update40592"
	self withUpdateLog: '15280 issue grabber should use new tracker app
	https://pharo.fogbugz.com/f/cases/15280

15234 monticello is not showing right status when working with branches
	https://pharo.fogbugz.com/f/cases/15234'.
	self loadTogether: self script592 merge: false.
	self flushCaches.
