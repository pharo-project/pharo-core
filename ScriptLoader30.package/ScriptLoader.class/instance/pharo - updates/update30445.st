update30445
	"self new update30445"
	self withUpdateLog: '11767 Fix codeCriticeBrowser and some critic driven cleanups for code critics
	https://pharo.fogbugz.com/f/cases/11767
	
11769 Some random refactorings
	https://pharo.fogbugz.com/f/cases/11769'.
	self loadTogether: self script100 merge: false.
	self flushCaches.
