update50277
	"self new update50277"
	self withUpdateLog: '16335 test command line handler should exit with failure if tests fails
	https://pharo.fogbugz.com/f/cases/16335'.
	self loadTogether: self script50277 merge: false.
	self flushCaches.
