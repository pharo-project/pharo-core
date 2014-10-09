update40294
	"self new update40294"
	self withUpdateLog: '11243 Class>>copy does not preserve layout
	https://pharo.fogbugz.com/f/cases/11243

14099 SmalllintManifestChecker duplicates RBSmalllintChecker>>#run
	https://pharo.fogbugz.com/f/cases/14099'.
	self loadTogether: self script294 merge: false.
	self flushCaches.
