update40145
	"self new update40145"
	self withUpdateLog: '13743 tiny clean in AnnounceMentTests
	https://pharo.fogbugz.com/f/cases/13743

13739 Nautilus Refactoring 5: intermediate code cleanup  (remove unused methods)
	https://pharo.fogbugz.com/f/cases/13739

13693 Monticello Settings --> move to Monticello
	https://pharo.fogbugz.com/f/cases/13693

13741 Another small Ring refactoring
	https://pharo.fogbugz.com/f/cases/13741

'.
	self loadTogether: self script145 merge: false.
	self flushCaches.
self cleanRepositories.
