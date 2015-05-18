update50049
	"self new update50049"
	self withUpdateLog: '15557 New PackageManifests should be classes, not instances
	https://pharo.fogbugz.com/f/cases/15557

15556 use new athens configuration 3.5
	https://pharo.fogbugz.com/f/cases/15556'.
	self loadTogether: self script50049 merge: false.
	self loadConfiguration: 'Athens' version: '3.5'.self flushCaches.
