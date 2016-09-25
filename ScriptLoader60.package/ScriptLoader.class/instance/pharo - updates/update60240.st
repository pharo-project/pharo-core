update60240
	"self new update60240"
	self withUpdateLog: '19140 asClass should be packaged in ScriptingExtensions
	https://pharo.fogbugz.com/f/cases/19140

19139 Method comment of yourself should be really improved
	https://pharo.fogbugz.com/f/cases/19139'.
	self loadTogether: self script60240 merge: false.
	self flushCaches.
