update40531
	"self new update40531"
	self withUpdateLog: '15030 ChangesBrowser should not roll own dialog
	https://pharo.fogbugz.com/f/cases/15030'.
	self loadTogether: self script531 merge: false.
	self flushCaches.
