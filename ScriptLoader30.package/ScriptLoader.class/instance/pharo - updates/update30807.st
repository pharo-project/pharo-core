update30807
	"self new update30807"
	self withUpdateLog: '13065 Windows FileSystem \test\bar not an absolute path
	https://pharo.fogbugz.com/f/cases/13065

13162 Fix comment of Form>>magnifyBy:
	https://pharo.fogbugz.com/f/cases/13162

13067 Error message on accept has a typo: End of statement list encounted
	https://pharo.fogbugz.com/f/cases/13067
	
13026 IdentitySet>>size reports wrong size
	https://pharo.fogbugz.com/f/cases/13026

'.
	self loadTogether: self script460 merge: false.
	(RPackageOrganizer default packageNamed: #'FloatArray-dot.st') unregister.
IdentitySet allInstances do: #grow.
.
	self flushCaches.
