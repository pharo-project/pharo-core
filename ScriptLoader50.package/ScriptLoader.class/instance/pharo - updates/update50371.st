update50371
	"self new update50371"
	
DangerousClassNotifier disable.
	self withUpdateLog: '16577 Random should be in its own package
	https://pharo.fogbugz.com/f/cases/16577'.
	self loadTogether: self script50371 merge: false.
	
DangerousClassNotifier enable.
	self flushCaches.
