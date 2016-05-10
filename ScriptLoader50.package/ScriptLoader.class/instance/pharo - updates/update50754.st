update50754
	"self new update50754"
	self withUpdateLog: '18153 Failing on CI on Windows: SocketTest.testUDPBroadcastError (from Network-Tests)
	https://pharo.fogbugz.com/f/cases/18153'.
	self loadTogether: self script50754 merge: false.
	self flushCaches.
