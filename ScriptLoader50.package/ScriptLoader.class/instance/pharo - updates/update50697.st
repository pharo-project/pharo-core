update50697
	"self new update50697"
	self withUpdateLog: '17905 TaskbarMorph should not kill an image when not all required methods are implemented
	https://pharo.fogbugz.com/f/cases/17905

'.
	self loadTogether: self script50697 merge: false.
	self flushCaches.
self cleanRepositories.
