update30530
	"self new update30530"
	self withUpdateLog: '12021 LoadUpdatesCommandLineHandler should fail if updates cannot be loaded
	https://pharo.fogbugz.com/f/cases/12021'.
	self loadTogether: self script185 merge: false.
	self flushCaches.
