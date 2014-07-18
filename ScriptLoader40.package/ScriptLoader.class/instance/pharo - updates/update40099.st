update40099
	"self new update40099"
	self withUpdateLog: '13576 Small code critique cleanup Graphics-Primitives
	https://pharo.fogbugz.com/f/cases/13576

13587 add tests to make sure globals and class vars use the right bindings
	https://pharo.fogbugz.com/f/cases/13587

13580 move UnixEnvironment and Win32Environment to NativeBoost
	https://pharo.fogbugz.com/f/cases/13580

'.
	self loadTogether: self script99 merge: false.
	self flushCaches.
self cleanRepositories.
