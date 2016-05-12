update50757
	"self new update50757"
	self withUpdateLog: '18203 Welcome window does not show content at startup
	https://pharo.fogbugz.com/f/cases/18203

18208 Add changelog to welcome browser
	https://pharo.fogbugz.com/f/cases/18208'.
	self loadTogether: self script50757 merge: false.
	
PharoWelcomePage openForRelease.
.
	self flushCaches.
