update40136
	"self new update40136"
	self withUpdateLog: '13704 Nautilus Refactoring 3: recategorize methods / clean code critics
	https://pharo.fogbugz.com/f/cases/13704

13727 MessageBrowser API Clean: Continue, start cleaning SystemNavigation
	https://pharo.fogbugz.com/f/cases/13727

'.
	self loadTogether: self script136 merge: false.
	self flushCaches.
self cleanRepositories.
