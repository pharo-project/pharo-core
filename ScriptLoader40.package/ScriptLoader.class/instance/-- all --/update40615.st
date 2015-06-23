update40615
	"self new update40615"
	self withUpdateLog: '15797 Backport 4.0: New PackageManifests should be classes, not instances
	https://pharo.fogbugz.com/f/cases/15797'.
	self loadTogether: self script615 merge: false.
	self flushCaches.
