update30785
	"self new update30785"
	self withUpdateLog: '12998 Split class refactoring does not work (gives MNU)
	https://pharo.fogbugz.com/f/cases/12998

12965 Cannot moveTo: FileLocator
	https://pharo.fogbugz.com/f/cases/12965

12971 CriticBrowser causes error on opening when delivering notification
	https://pharo.fogbugz.com/f/cases/12971

'.
	self loadTogether: self script438 merge: false.
	self flushCaches.
