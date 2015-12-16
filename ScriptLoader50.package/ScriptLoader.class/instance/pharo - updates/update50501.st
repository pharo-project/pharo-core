update50501
	"self new update50501"
	self withUpdateLog: '17247 clean dirty slot packages (spur migration)
	https://pharo.fogbugz.com/f/cases/17247

17248 integrate FFI-NB changes on System packages (spur migration)
	https://pharo.fogbugz.com/f/cases/17248

17245 clean dirty collection packages (spur migration)
	https://pharo.fogbugz.com/f/cases/17245

17246 clean dirty fuel packages (spur migration)
	https://pharo.fogbugz.com/f/cases/17246

17244 Startup scripts should be reset on cleanUp
	https://pharo.fogbugz.com/f/cases/17244

'.
	self loadTogether: self script50501 merge: false.
	self flushCaches.
self cleanRepositories.
