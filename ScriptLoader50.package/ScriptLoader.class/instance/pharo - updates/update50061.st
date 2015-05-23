update50061
	"self new update50061"
	self withUpdateLog: '15331 Put back "debug test"
	https://pharo.fogbugz.com/f/cases/15331

15592 Clean up OldClassBuilderAdapter, next step
	https://pharo.fogbugz.com/f/cases/15592'.
	self loadTogether: self script50061 merge: false.
	self flushCaches.
