update50006
	"self new update50006"
	self withUpdateLog: '15385 Improving ParseTreeSearcher and RewriterTests
	https://pharo.fogbugz.com/f/cases/15385

15386 Clean up OldClassBuilderAdapter (first step)
	https://pharo.fogbugz.com/f/cases/15386

'.
	self loadTogether: self script615 merge: false.
	self flushCaches.
self cleanRepositories.
