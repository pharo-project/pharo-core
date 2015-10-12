update50381
	"self new update50381"
	
DangerousClassNotifier disable.
	self withUpdateLog: '16761 Method source should not contain linefeeds in Kernel
	https://pharo.fogbugz.com/f/cases/16761

16577 Random should be in its own package
	https://pharo.fogbugz.com/f/cases/16577'.
	self loadTogether: self script50381 merge: false.
	
DangerousClassNotifier enable.
	self flushCaches.
