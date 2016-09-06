update60206
	"self new update60206"
	self withUpdateLog: '19048 move testZipped to Compression-Tests
	https://pharo.fogbugz.com/f/cases/19048

19046 SUnit watch dog should not signal error when test environment is not active like during debugger
	https://pharo.fogbugz.com/f/cases/19046

19028 Process ondo method to inject default exception handlers
	https://pharo.fogbugz.com/f/cases/19028

18974 A Nautilus fix to support class method tests
	https://pharo.fogbugz.com/f/cases/18974'.
	self loadTogether: self script60206 merge: false.
	self flushCaches.
