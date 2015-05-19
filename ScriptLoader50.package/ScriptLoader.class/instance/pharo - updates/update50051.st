update50051
	"self new update50051"
	self withUpdateLog: '15560 New bytecode set recent issues
	https://pharo.fogbugz.com/f/cases/15560'.
	self loadTogether: self script50051 merge: false.
	self flushCaches.
