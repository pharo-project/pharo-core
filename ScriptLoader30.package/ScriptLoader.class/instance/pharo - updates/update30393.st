update30393
	"self new update30393"
	self withUpdateLog: '11587 Spotlight does not allow browsing of selectors with spaces
	https://pharo.fogbugz.com/f/cases/11587
	
11585 Settings should not ask for name
	https://pharo.fogbugz.com/f/cases/11585

11586 FormCanvas should always use the accessor to access TranslucentPattern
	https://pharo.fogbugz.com/f/cases/11586'.
	self loadTogether: self script185 merge: false.
	self flushCaches.
