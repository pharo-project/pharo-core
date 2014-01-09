update30680
	"self new update30680"
	self withUpdateLog: '12456 Split Komitter RemotesManager in 2 parts
	https://pharo.fogbugz.com/f/cases/12456
	
12513 Big number of Announcer instances
	https://pharo.fogbugz.com/f/cases/12513
	
12580 RPackageSet should not work as old PackageInfo	
	https://pharo.fogbugz.com/f/cases/12580/'.
	self loadTogether: self script333 merge: false.
	Nautilus withAllSubclassesDo: #resetGroups.
	self flushCaches.
