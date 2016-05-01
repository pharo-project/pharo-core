update50740
	"self new update50740"
	self withUpdateLog: '18140 StartupPreferencesLoader does not guard enough against errors
	https://pharo.fogbugz.com/f/cases/18140'.
	self loadTogether: self script50740 merge: false.
	self flushCaches.
