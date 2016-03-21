update50656
	"self new update50656"
	self withUpdateLog: '17844 make SystemSettingsPersistence the last startup executed
	https://pharo.fogbugz.com/f/cases/17844

17852 command line test runner should be able to exit without error if there are failures
	https://pharo.fogbugz.com/f/cases/17852'.
	self loadTogether: self script50656 merge: false.
	self loadConfiguration: 'SessionManager' version: '1.5'.
SessionManager default: SessionManager initializedSessionManager. 
SessionManager default installNewSession.
QAEventCollector initialize.
	self flushCaches.
