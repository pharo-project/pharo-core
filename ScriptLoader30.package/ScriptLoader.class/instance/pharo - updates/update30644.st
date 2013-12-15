update30644
	"self new update30644"
	self withUpdateLog: '11983 testOnForkErrorTakesLessThanOneSecond failing
	https://pharo.fogbugz.com/f/cases/11983
	
12424 testSizeInMemoryClasses is buggy
	https://pharo.fogbugz.com/f/cases/12424
	
12422 move icons from komitter to theme icons class
	https://pharo.fogbugz.com/f/cases/12422
'.
	self loadTogether: self script297 merge: false.
	self flushCaches.
