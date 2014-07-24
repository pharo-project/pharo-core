update40121
	"self new update40121"
	self withUpdateLog: '13664 Remove all references to CodeHolder 
	https://pharo.fogbugz.com/f/cases/13664

13629 Polymorph-Widgets still extends ThreadSafeTranscript
	https://pharo.fogbugz.com/f/cases/13629

13661 Shadow variables in kernel Context
	https://pharo.fogbugz.com/f/cases/13661


'.
	self loadTogether: self script121 merge: false.
	self flushCaches.
self cleanRepositories.
