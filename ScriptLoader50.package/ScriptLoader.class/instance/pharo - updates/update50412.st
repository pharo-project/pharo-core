update50412
	"self new update50412"
	self withUpdateLog: '16898 MNU: Point>>@
	https://pharo.fogbugz.com/f/cases/16898

16899 StartupPreferencesLoader makes new unimplemented calls in the minimal Pharo
	https://pharo.fogbugz.com/f/cases/16899'.
	self loadTogether: self script50412 merge: false.
	self flushCaches.
