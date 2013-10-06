update30370
	"self new update30370"
	self withUpdateLog: '11529 MetacelloConfigurationBrowser open not working
	https://pharo.fogbugz.com/f/cases/11529
	
11062 Remove old compiler API from Pharo image Part 2
	https://pharo.fogbugz.com/f/cases/11062
	'.
	self loadTogether: self script162 merge: false.
	self flushCaches.
