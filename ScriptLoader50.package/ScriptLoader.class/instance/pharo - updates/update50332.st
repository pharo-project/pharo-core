update50332
	"self new update50332"
	self withUpdateLog: '16595 Get rid of UnicodeInitialization in the bootstrap
	https://pharo.fogbugz.com/f/cases/16595'.
	self loadTogether: self script50332 merge: false.
	self flushCaches.
