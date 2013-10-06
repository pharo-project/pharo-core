update30414
	"self new update30414"
	self withUpdateLog: '11644 windowMaximizeForm and windowCloseForm missing on the standard ThemeIcons
	https://pharo.fogbugz.com/f/cases/11644
	
11649 ObjectExplorer should use own UI creation methods
	https://pharo.fogbugz.com/f/cases/11649
	'.
	self loadTogether: self script206 merge: false.
	self flushCaches.
