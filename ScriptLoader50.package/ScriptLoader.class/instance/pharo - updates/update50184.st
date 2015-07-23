update50184
	"self new update50184"
	self withUpdateLog: '16008 simplify AbstractTool>>renamePackages: 
	https://pharo.fogbugz.com/f/cases/16008

16012 parse link option from method pragma
	https://pharo.fogbugz.com/f/cases/16012

'.
	self loadTogether: self script50184 merge: false.
	self flushCaches.
self cleanRepositories.
