update60101
	"self new update60101"
	self withUpdateLog: '18546 haltOnce and haltOnCount:  Icon label should provide information
	https://pharo.fogbugz.com/f/cases/18546

18325 Deprecation critiques
	https://pharo.fogbugz.com/f/cases/18325

18491 Cannot show changes in packages with postscript (like Alien)
	https://pharo.fogbugz.com/f/cases/18491'.
	self loadTogether: self script60101 merge: false.
	
ClassHierarchyTest fixSubclasses.
	self flushCaches.
