update30679
	"self new update30679"
	self withUpdateLog: '12377 ZnHTTPSTests.>>testGetPharoVersion fails on Windows slave
	https://pharo.fogbugz.com/f/cases/12377
	
'.
	self loadTogether: self script332 merge: false.
	self flushCaches.
