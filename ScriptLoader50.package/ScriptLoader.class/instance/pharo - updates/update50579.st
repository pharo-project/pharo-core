update50579
	"self new update50579"
	self withUpdateLog: '17175 time profiler context menu shows deprecation warning
	https://pharo.fogbugz.com/f/cases/17175

17519 Fix test for no package information for class side trait methods
	https://pharo.fogbugz.com/f/cases/17519

17564 atomic pointers needs to be rolled as pointers when needed too
	https://pharo.fogbugz.com/f/cases/17564'.
	self loadTogether: self script50579 merge: false.
	self loadConfiguration: 'UnifiedFFI' version: '0.13'.
RPackageOrganizer initializeDefaultFromMC.
	self flushCaches.
