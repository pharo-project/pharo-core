update40129
	"self new update40129"
	self withUpdateLog: '13699 Nautilus Refactoring 2: PackagePane widget
	https://pharo.fogbugz.com/f/cases/13699

'.
	self loadTogether: self script129 merge: false.
	self flushCaches.
self cleanRepositories.
