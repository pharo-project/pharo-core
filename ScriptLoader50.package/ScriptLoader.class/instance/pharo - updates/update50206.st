update50206
	"self new update50206"
	self withUpdateLog: '15990 Failing tests testCanCreateFiletreeRepositoryFromUrl (on windows)
	https://pharo.fogbugz.com/f/cases/15990

16088 Fix DiffMorph when called from Komitter  
	https://pharo.fogbugz.com/f/cases/16088'.
	self loadTogether: self script50206 merge: false.
	self flushCaches.
