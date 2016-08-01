update60160
	"self new update60160"
	self withUpdateLog: '18840 Cleaning of Spec-example, adding their tests
	https://pharo.fogbugz.com/f/cases/18840

18848 Traits do not show up when using sendersOfIt
	https://pharo.fogbugz.com/f/cases/18848

18802 Versionner puts a MCLazyVersionInfo(package name) instead of the package name
	https://pharo.fogbugz.com/f/cases/18802'.
	self loadTogether: self script60160 merge: false.
	self flushCaches.
