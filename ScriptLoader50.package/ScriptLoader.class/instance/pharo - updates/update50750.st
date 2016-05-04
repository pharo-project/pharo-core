update50750
	"self new update50750"
	self withUpdateLog: '18161 Skip the two failing test for Pharo5
	https://pharo.fogbugz.com/f/cases/18161'.
	self loadTogether: self script50750 merge: false.
	self flushCaches.
