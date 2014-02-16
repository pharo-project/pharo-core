update30764
	"self new update30764"
	self withUpdateLog: '12880 Monticello shows new class-side extension methods as local (i.e. not as extensions)
	https://pharo.fogbugz.com/f/cases/12880

'.
	self loadTogether: self script417 merge: false.
	self flushCaches.
