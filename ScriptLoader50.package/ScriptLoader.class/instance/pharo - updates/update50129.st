update50129
	"self new update50129"
	self withUpdateLog: '15823 Clean up discouraged uses of SourceFiles and friends (8)
	https://pharo.fogbugz.com/f/cases/15823'.
	self loadTogether: self script50129 merge: false.
	self flushCaches.
