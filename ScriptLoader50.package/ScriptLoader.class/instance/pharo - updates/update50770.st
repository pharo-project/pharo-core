update50770
	"self new update50770"
	self withUpdateLog: '19738 MCFtpRepository does not understand #koRemote
	https://pharo.fogbugz.com/f/cases/19738'.
	self loadTogether: self script50770 merge: false.
	self flushCaches.
