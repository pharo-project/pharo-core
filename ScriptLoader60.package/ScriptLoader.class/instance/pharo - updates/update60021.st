update60021
	"self new update60021"
	self withUpdateLog: '18264 WriteBarrierTest are failing. Maybe put on "expected" for now
	https://pharo.fogbugz.com/f/cases/18264

16084 introduce pragma "ignoreUnimplementedCalls:"
	https://pharo.fogbugz.com/f/cases/16084

18262 safe usage of optional StartupPreferencesLoader in the PharoCommandLineHandler
	https://pharo.fogbugz.com/f/cases/18262'.
	self loadTogether: self script60021 merge: false.
	self flushCaches.
