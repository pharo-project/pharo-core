update40092
	"self new update40092"
	self withUpdateLog: '13515 GrafPort and EllipseMidpointTracer should not be in Morphic package
	https://pharo.fogbugz.com/f/cases/13515

13563 Fix sender of deprecated RPackageOrganizer>>#renamePackage:in: method
	https://pharo.fogbugz.com/f/cases/13563

'.
	self loadTogether: self script92 merge: false.
	self flushCaches.
self cleanRepositories.
