update50555
	"self new update50555"
	SessionManager default 
	registerSystemClassNamed: #ExternalObject atPriority: 60; 
	registerSystemClassNamed: #Alien atPriority: 60;
	registerSystemClassNamed: #FFICallbackThunk atPriority: 60;
	registerSystemClassNamed: #FFIMethodRegistry atPriority: 60.
SessionManager default: SessionManager initializedSessionManager.
SessionManager default installNewSession.
	self withUpdateLog: '16735 Replace Startup/Shutdown list with SessionManager
	https://pharo.fogbugz.com/f/cases/16735
'.
	self loadTogether: self script50555 merge: false.
	self flushCaches.
self cleanRepositories.
