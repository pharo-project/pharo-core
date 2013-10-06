update30453
	"self new update30453"
	self withUpdateLog: '11571 Add command line commands for managing the preferences
	https://pharo.fogbugz.com/f/cases/11571'.
	self loadTogether: self script108 merge: false.
	StartupPreferencesLoader reset.
Smalltalk removeFromStartUpList: StartupLoader.
	self flushCaches.
