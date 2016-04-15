update50692
	"self new update50692"
	self withUpdateLog: '18005 speed up Nautilus tests
	https://pharo.fogbugz.com/f/cases/18005'.
	self loadTogether: self script50692 merge: false.
	self flushCaches.
