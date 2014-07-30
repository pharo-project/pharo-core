update40142
	"self new update40142"
	self withUpdateLog: '13733 Nautilus Refaktoring 4: move class list loading to ClassWidget
	https://pharo.fogbugz.com/f/cases/13733

13734 Move MethodClassifier to Tools-Base
	https://pharo.fogbugz.com/f/cases/13734

'.
	self loadTogether: self script142 merge: false.
	self flushCaches.
self cleanRepositories.
