update40126
	"self new update40126"
	self withUpdateLog: '13694 Small cleanup in System-Changes
	https://pharo.fogbugz.com/f/cases/13694

13695 cleanup MessageBrowser API a little
	https://pharo.fogbugz.com/f/cases/13695

13666 Small Code critique cleanup of Kernel
	https://pharo.fogbugz.com/f/cases/13666

13677 Move WindowEvent to Morphic-Core
	https://pharo.fogbugz.com/f/cases/13677

'.
	self loadTogether: self script126 merge: false.
	self flushCaches.
self cleanRepositories.
