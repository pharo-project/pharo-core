update40117
	"self new update40117"
	self withUpdateLog: '

13656 remove CompiledMethod searchForClass and searchForSelector
	https://pharo.fogbugz.com/f/cases/13656


13657 Remove at: check from RBConsistencyCheckRule
	https://pharo.fogbugz.com/f/cases/13657

'.
	self loadTogether: self script117 merge: false.
	self flushCaches.
self cleanRepositories.
