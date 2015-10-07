update50369
	"self new update50369"
	
DangerousClassNotifier disable.
	self withUpdateLog: '16732 DNU when cancel fetch on retrieve icon sets
	https://pharo.fogbugz.com/f/cases/16732

16577 Random should be in its own package
	https://pharo.fogbugz.com/f/cases/16577

16726 move Reflectivity-Styling to a separate package
	https://pharo.fogbugz.com/f/cases/16726'.
	self loadTogether: self script50369 merge: false.
	
DangerousClassNotifier enable.
	self flushCaches.
