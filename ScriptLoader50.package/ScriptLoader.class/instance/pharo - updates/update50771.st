update50771
	"self new update50771"
	self withUpdateLog: '19858 backport WinPlatform to Pharo5 to allow UFFI to load
	https://pharo.fogbugz.com/f/cases/19858'.
	self loadTogether: self script50771 merge: false.
	self flushCaches.
