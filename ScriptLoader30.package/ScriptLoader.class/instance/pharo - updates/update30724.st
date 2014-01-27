update30724
	"self new update30724"
	self withUpdateLog: '12716 pharo initialization fails when there is no NativeBoost present
	https://pharo.fogbugz.com/f/cases/12716

'.
	self loadTogether: self script377 merge: false.
	OSPlatform startUp: true.
	self flushCaches.
