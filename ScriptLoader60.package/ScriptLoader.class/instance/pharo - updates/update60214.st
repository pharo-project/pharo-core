update60214
	"self new update60214"
	self withUpdateLog: '19073 Image snapshot should be forcible executed un DefaultExecutionEnvironment
	https://pharo.fogbugz.com/f/cases/19073'.
	self loadTogether: self script60214 merge: false.
	self flushCaches.
