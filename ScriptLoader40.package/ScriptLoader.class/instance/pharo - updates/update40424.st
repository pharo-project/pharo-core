update40424
	"self new update40424"
	self withUpdateLog: '14659 Integrating new bytecode set (part 1)
	https://pharo.fogbugz.com/f/cases/14659

14660 one test failing after integrating 14659
	https://pharo.fogbugz.com/f/cases/14660

'.
	self loadTogether: self script424 merge: false.
	self flushCaches.
self cleanRepositories.
