update50651
	"self new update50651"
	self withUpdateLog: '17836 GTEventTool>>#checkProcess has undeclared variables
	https://pharo.fogbugz.com/f/cases/17836

17834 World Morph is started up before Fonts
	https://pharo.fogbugz.com/f/cases/17834

16527 All popups very hard to read with white on lightblue
	https://pharo.fogbugz.com/f/cases/16527'.
	self loadTogether: self script50651 merge: false.
	self loadConfiguration: 'GTEventRecorder' version: '0.12'.
self loadConfiguration: 'SessionManager' version: '1.4'.
SessionManager default: SessionManager initializedSessionManager. 
SessionManager default installNewSession.
QAEventCollector initialize.
	self flushCaches.
