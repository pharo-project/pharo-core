update40235
	"self new update40235"
	self withUpdateLog: '14038 #testSendersOfAt failing when running the tests in the image 
	https://pharo.fogbugz.com/f/cases/14038

14039 #testCurrent always fails when running all tests...
	https://pharo.fogbugz.com/f/cases/14039

14041 Continue cleaning Ring Factory
	https://pharo.fogbugz.com/f/cases/14041'.
	self loadTogether: self script235 merge: false.
	self flushCaches.
