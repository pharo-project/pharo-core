update40130
	"self new update40130"
	self withUpdateLog: '13035 Ctrl-Shift-b causes DNU
	https://pharo.fogbugz.com/f/cases/13035

13702 MessageList should not have direct references
	https://pharo.fogbugz.com/f/cases/13702

13703 MCPackageManager>>#update: not needed
	https://pharo.fogbugz.com/f/cases/13703

'.
	self loadTogether: self script130 merge: false.
	self flushCaches.
self cleanRepositories.
