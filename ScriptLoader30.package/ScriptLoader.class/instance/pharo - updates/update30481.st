update30481
	"self new update30481"
	self withUpdateLog: '10821 Integrate Metacello 2
	https://pharo.fogbugz.com/f/cases/10821
'.
	self loadTogether: self script136 merge: false.
	self flushCaches.
