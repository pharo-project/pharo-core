update40038
	"self new update40038"
	DangerousClassNotifier disable.
.
	self withUpdateLog: '13378 DynamicVariable cannot be stepped in debugger 
	https://pharo.fogbugz.com/f/cases/13378

'.
	self loadTogether: self script38 merge: false.
	DangerousClassNotifier enable.
.
	self flushCaches.
