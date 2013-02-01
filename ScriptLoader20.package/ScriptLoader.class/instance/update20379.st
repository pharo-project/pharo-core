pharo - updates
update20379
	"self new update20379"
	self withUpdateLog: 'Issue 6909:	Default cycling settings are not well set
	http://code.google.com/p/pharo/issues/detail?id=6909
	
Issue 6903:	method categories got completely confused
	http://code.google.com/p/pharo/issues/detail?id=6903'.
	self loadTogether: self script359 merge: false.
	TasklistMorph useHistoricalShortcuts: false.
RPackageOrganizer initialize.
.
	self flushCaches.
