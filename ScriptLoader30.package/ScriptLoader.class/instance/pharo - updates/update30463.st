update30463
	"self new update30463"
	self withUpdateLog: '11665 RPackageOrganizer speedup
	https://pharo.fogbugz.com/f/cases/11665
	
11818 revert two #sorted changed from 30462
	https://pharo.fogbugz.com/f/cases/11818'.
	self loadTogether: self script118 merge: false.
	ClassHierarchyTest fixSubclasses.
	self flushCaches.
