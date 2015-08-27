update50281
	"self new update50281"
	self withUpdateLog: '16294 get rid of System-VMEvents dependency in the bootstrap
	https://pharo.fogbugz.com/f/cases/16294

16203 Wrong diff when changing the package of an extension method
	https://pharo.fogbugz.com/f/cases/16203

16394 Kernel should not depend on System-CommandLine. Check the Exit class
	https://pharo.fogbugz.com/f/cases/16394

16403 make two icon names more uniform
	https://pharo.fogbugz.com/f/cases/16403

'.
	self loadTogether: self script50281 merge: false.
	self flushCaches.
self cleanRepositories.
