update40069
	"self new update40069"
	DangerousClassNotifier disable.
.
	self withUpdateLog: '13483 Preference to always show experimental slot class template
	https://pharo.fogbugz.com/f/cases/13483

12373 Class>>name: should be deprecated
	https://pharo.fogbugz.com/f/cases/12373

'.
	self loadTogether: self script69 merge: false.
	DangerousClassNotifier enable.
OCCompilerNotifyingTest compileAll.
	self flushCaches.
self cleanRepositories.
