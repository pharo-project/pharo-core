update30423
	"self new update30423"
	self withUpdateLog: '11676 A user with no save right should not be asked
	https://pharo.fogbugz.com/f/cases/11676
	
11666 ClassOrganization>>ownCategories missing
	https://pharo.fogbugz.com/f/cases/11666
	'.
	self loadTogether: self script102 merge: false.
	self flushCaches.
