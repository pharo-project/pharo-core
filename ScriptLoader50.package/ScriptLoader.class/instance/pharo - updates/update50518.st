update50518
	"self new update50518"
	self withUpdateLog: '17276 Semantic Analysis needs refactoring
	https://pharo.fogbugz.com/f/cases/17276'.
	self loadTogether: self script50518 merge: false.
	self flushCaches.
