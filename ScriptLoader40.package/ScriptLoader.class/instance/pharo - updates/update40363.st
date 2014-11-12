update40363
	"self new update40363"
	self withUpdateLog: '14422 AnnouncementSpy is not needed anymore: GTInspector has all the functionality
	https://pharo.fogbugz.com/f/cases/14422

14429 DebuggerTests package should be Debugger-Tests
	https://pharo.fogbugz.com/f/cases/14429

14431 FontInfrastructureTests package should be FontInfrastructure-Tests
	https://pharo.fogbugz.com/f/cases/14431

14430 EmbeddedFreeTypeTests package should be EmbeddedFreeType-Tests
	https://pharo.fogbugz.com/f/cases/14430'.
	self loadTogether: self script363 merge: false.
	self flushCaches.
