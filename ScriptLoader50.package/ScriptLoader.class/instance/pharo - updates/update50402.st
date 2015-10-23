update50402
	"self new update50402"
	DangerousClassNotifier disable.
	self withUpdateLog: '16842 Recategorize example -> examples
	https://pharo.fogbugz.com/f/cases/16842

16845 Collection do not need initialization anymore
	https://pharo.fogbugz.com/f/cases/16845

16852 SocketStream class>>#finger: calls unimplemented call getLine
	https://pharo.fogbugz.com/f/cases/16852

'.
	self loadTogether: self script50402 merge: false.
	DangerousClassNotifier enable.
	self flushCaches.
self cleanRepositories.
