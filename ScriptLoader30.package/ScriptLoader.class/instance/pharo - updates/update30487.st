update30487
	"self new update30487"
	self withUpdateLog: '11015 Remove old Inspector
	https://pharo.fogbugz.com/f/cases/11015'.
	self loadTogether: self script142 merge: false.
	self flushCaches.
