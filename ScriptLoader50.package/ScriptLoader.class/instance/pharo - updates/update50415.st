update50415
	"self new update50415"
	self withUpdateLog: '16894 Better generator class comment
	https://pharo.fogbugz.com/f/cases/16894

16881 MCLazyVersion: avoid aggressive fetch of version info
	https://pharo.fogbugz.com/f/cases/16881

16900 Small Nautilus cleanup
	https://pharo.fogbugz.com/f/cases/16900'.
	self loadTogether: self script50415 merge: false.
	self flushCaches.
