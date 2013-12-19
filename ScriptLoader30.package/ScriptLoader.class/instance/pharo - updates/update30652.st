update30652
	"self new update30652"
	self withUpdateLog: '12425 RPackage and PackageTreeNautilus fixes
	https://pharo.fogbugz.com/f/cases/12425
	
12389 Debugger should highlight the problems the first time it shows the code pane
	https://pharo.fogbugz.com/f/cases/12389
	
12447 Error Instances of GroupAlreadyExists are not indexable
	https://pharo.fogbugz.com/f/cases/12447
	
12448 Cannot rename a Group in Nautilus
	https://pharo.fogbugz.com/f/cases/12448
'.
	self loadTogether: self script305 merge: false.
	RPackageOrganizer initializeDefaultFromMC.
	self flushCaches.
