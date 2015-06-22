update50128
	"self new update50128"
	self withUpdateLog: '15818 Clean up discouraged uses of SourceFiles and friends (7)
	https://pharo.fogbugz.com/f/cases/15818'.
	self loadTogether: self script50128 merge: false.
	self flushCaches.
