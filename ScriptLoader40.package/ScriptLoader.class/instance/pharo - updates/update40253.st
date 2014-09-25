update40253
	"self new update40253"
	
DangerousClassNotifier disable.
.
	self withUpdateLog: '13599 ClassOrganizer-Core: move to Kernel-Protocol
	https://pharo.fogbugz.com/f/cases/13599'.
	self loadTogether: self script253 merge: false.
	
DangerousClassNotifier enable.
.
	self flushCaches.
