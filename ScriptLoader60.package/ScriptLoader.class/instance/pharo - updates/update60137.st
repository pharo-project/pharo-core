update60137
	"self new update60137"
	self withUpdateLog: '18690 deprecated BitBlt class>>#current
	https://pharo.fogbugz.com/f/cases/18690

17434 debugger missing block local var for optimized blocks
	https://pharo.fogbugz.com/f/cases/17434

18674 Turn spotter catalog off by default
	https://pharo.fogbugz.com/f/cases/18674

18608 Impossible to delete a class
	https://pharo.fogbugz.com/f/cases/18608'.
	self loadTogether: self script60137 merge: false.
	
GTSpotterExtensionSettings disableProcessorDefinedInMethod: (GTSpotter>>#spotterCatalogProjectsFor:).
	self flushCaches.
