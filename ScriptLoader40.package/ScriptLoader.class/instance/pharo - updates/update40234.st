update40234
	"self new update40234"
	self withUpdateLog: '14026 Cleanup System-Localization package and add tests
	https://pharo.fogbugz.com/f/cases/14026'.
	self loadTogether: self script234 merge: false.
	self flushCaches.
