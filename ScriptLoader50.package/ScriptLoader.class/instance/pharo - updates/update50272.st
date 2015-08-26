update50272
	"self new update50272"
	self withUpdateLog: '16277 Unselect the hierarchie button show the class definission
	https://pharo.fogbugz.com/f/cases/16277

16290 Get rid of System-CommandLine dependency from the bootstrap
	https://pharo.fogbugz.com/f/cases/16290

16369 do not use IdentitySet in whichSelectorsReferTo:  and friends
	https://pharo.fogbugz.com/f/cases/16369

'.
	self loadTogether: self script50272 merge: false.
	self flushCaches.
self cleanRepositories.
