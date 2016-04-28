update50728
	"self new update50728"
	self withUpdateLog: '18108 reloading of Author settings rises prompt window
	https://pharo.fogbugz.com/f/cases/18108'.
	self loadTogether: self script50728 merge: false.
	self flushCaches.
