update50743
	"self new update50743"
	self withUpdateLog: '18136 Network related tests failing only on Windows on CI 
	https://pharo.fogbugz.com/f/cases/18136'.
	self loadTogether: self script50743 merge: false.
	self flushCaches.
