update50738
	"self new update50738"
	self withUpdateLog: '18137 Network test failing only on MAC on CI: UDPSocketEchoTest.testEcho
	https://pharo.fogbugz.com/f/cases/18137

18139 getenv() call on Ubuntu 14.04 (32 bit) fails in one-click image
	https://pharo.fogbugz.com/f/cases/18139'.
	self loadTogether: self script50738 merge: false.
	self flushCaches.
