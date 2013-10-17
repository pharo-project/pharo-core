update30495
	"self new update30495"
	self withUpdateLog: '11910 1 RPackage should be = 1 MCPackage
	https://pharo.fogbugz.com/f/cases/11910
	
11911 Nautilus should show a package tree instead a simple list
	https://pharo.fogbugz.com/f/cases/11911
'.
	self loadTogether: self script150 merge: false.
	RPackageOrganizer initialize.
PackageTreeNautilus registerToolsOn: Smalltalk tools.
.
	self flushCaches.
