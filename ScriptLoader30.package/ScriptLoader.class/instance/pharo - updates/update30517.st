update30517
	"self new update30517"
	self withUpdateLog: '11975 Sync with Opal Repository
	https://pharo.fogbugz.com/f/cases/11975'.
	self loadTogether: self script172 merge: false.
	self flushCaches.
