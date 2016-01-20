update50537
	"self new update50537"
	self withUpdateLog: '17267 fix senders of #compactClassesArray 
	https://pharo.fogbugz.com/f/cases/17267

17077 ReleaseTest testMethodsWithUnboundGlobals fails for some slotexamples
	https://pharo.fogbugz.com/f/cases/17077

'.
	self loadTogether: self script50537 merge: false.
	self flushCaches.
self cleanRepositories.
