update40106
	"self new update40106"
	self withUpdateLog: '13610 Taskbar can be packaged separately
	https://pharo.fogbugz.com/f/cases/13610

13612 Move polymorph extension to workspace
	https://pharo.fogbugz.com/f/cases/13612

'.
	self loadTogether: self script106 merge: false.
	self flushCaches.
self cleanRepositories.
