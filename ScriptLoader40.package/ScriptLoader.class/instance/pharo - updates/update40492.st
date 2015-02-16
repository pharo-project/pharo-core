update40492
	"self new update40492"
	
DangerousClassNotifier disable.
	self withUpdateLog: '14064 Improvements to checking termination of processes
	https://pharo.fogbugz.com/f/cases/14064'.
	self loadTogether: self script492 merge: false.
	
DangerousClassNotifier enable.
	self flushCaches.
