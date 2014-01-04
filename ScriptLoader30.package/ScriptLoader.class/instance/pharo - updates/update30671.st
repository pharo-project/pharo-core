update30671
	"self new update30671"
	self withUpdateLog: '12524 Merge with the debugger repo
	https://pharo.fogbugz.com/f/cases/12524
	
12560 there are still some references to PackageInfo in RPackage
	https://pharo.fogbugz.com/f/cases/12560
	
10521 Renaming a package problems with extension methods
	https://pharo.fogbugz.com/f/cases/10521'.
	self loadTogether: self script324 merge: false.
	self flushCaches.
