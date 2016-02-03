update50565
	"self new update50565"
	self withUpdateLog: '17328 Missing RemoveExternalObjectsTable critical section
	https://pharo.fogbugz.com/f/cases/17328

17455 Debug test in contextmenu of methodPane
	https://pharo.fogbugz.com/f/cases/17455

17475 no package information for class side trait methods - again
	https://pharo.fogbugz.com/f/cases/17475'.
	self loadTogether: self script50565 merge: false.
	
RPackageOrganizer initializeDefaultFromMC.
	self flushCaches.
