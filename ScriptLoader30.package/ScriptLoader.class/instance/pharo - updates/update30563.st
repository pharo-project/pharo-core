update30563
	"self new update30563"
	self withUpdateLog: '12129 FileLocator is not initialized at the right point during startup
	https://pharo.fogbugz.com/f/cases/12129
	
12075 Fix TextActions and Add SourceWebBrowser for TextUrl
	https://pharo.fogbugz.com/f/cases/12075

1047 MCDataStream has strong Dictionary a class variable, preventing classes to be GCd.
	https://pharo.fogbugz.com/f/cases/1047	'.
	self loadTogether: self script219 merge: false.
	FileLocator startUp: true.
.
	self flushCaches.
