update40384
	"self new update40384"
	DangerousClassNotifier disable.
.
	self withUpdateLog: '14506 Add class inst vars to hold SmallInteger class>>minVal and maxVal. 
	https://pharo.fogbugz.com/f/cases/14506

'.
	self loadTogether: self script384 merge: false.
	DangerousClassNotifier enable.
	self flushCaches.
self cleanRepositories.
