update50063
	"self new update50063"
	self withUpdateLog: '15599 enable code generation for arguments passed to meta objects
	https://pharo.fogbugz.com/f/cases/15599'.
	self loadTogether: self script50063 merge: false.
	self flushCaches.
