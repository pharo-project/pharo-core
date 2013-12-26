update30660
	"self new update30660"
	ScriptLoader new addHomeRepositoryToAllPackages.
	self withUpdateLog: '12426 Morph menu has strange behavior when the Morph label is too large
	https://pharo.fogbugz.com/f/cases/12426
	
12505 Workaround: skip testChangeInSuperclass
	https://pharo.fogbugz.com/f/cases/12505
	
12474 Cleaning Nautilus extensions
	https://pharo.fogbugz.com/f/cases/12474
	
12436 Move ReleaseTest to its own package
	https://pharo.fogbugz.com/f/cases/12436'.
	self loadTogether: self script313 merge: false.
	self flushCaches.
