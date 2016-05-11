update50755
	"self new update50755"
	self withUpdateLog: '18023 add a WelcomeHelp page to open a Help Browser on it when starting
	https://pharo.fogbugz.com/f/cases/18023'.
	self loadTogether: self script50755 merge: false.
	
PharoWelcomePage openForRelease.
	self flushCaches.
