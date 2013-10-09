update30465
	"self new update30465"
	self withUpdateLog: '11827 #removeClassNamed: should not log to transcript
	https://pharo.fogbugz.com/f/cases/11827
	
11826 Small cleanup in SystemNavigation
	https://pharo.fogbugz.com/f/cases/11826
'.
	self loadTogether: self script120 merge: false.
	self flushCaches.
