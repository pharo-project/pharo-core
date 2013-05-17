pharo - updates
update20603
	"self new update20603"
	self withUpdateLog: '10537 Backport 2.0: StartupPreferences interferes with zeroconf pharo binary
	https://pharo.fogbugz.com/f/cases/10537
	
'.
	self loadTogether: self script576 merge: false.
	self flushCaches.
