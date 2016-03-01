update50620
	"self new update50620"
	self withUpdateLog: '17727 failing test: testWorkspaceIsNotAValidContext
	https://pharo.fogbugz.com/f/cases/17727

17721 Starting Image 50617 raises MNU
	https://pharo.fogbugz.com/f/cases/17721

'.
	self loadTogether: self script50620 merge: false.
	self flushCaches.
self cleanRepositories.
