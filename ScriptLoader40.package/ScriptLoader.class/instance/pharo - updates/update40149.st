update40149
	"self new update40149"
	self withUpdateLog: '13758 use better package selector for (class/methods) move to
	https://pharo.fogbugz.com/f/cases/13758

13765 Nautilus Refactoring 6: rename methods and fix hierarchy view
	https://pharo.fogbugz.com/f/cases/13765

'.
	self loadTogether: self script149 merge: false.
	self flushCaches.
self cleanRepositories.
