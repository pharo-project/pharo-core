update40141
	"self new update40141"
	self withUpdateLog: '13237 Pharo Zen values should be in the image
	https://pharo.fogbugz.com/f/cases/13237

'.
	self loadTogether: self script141 merge: false.
	self flushCaches.
self cleanRepositories.
