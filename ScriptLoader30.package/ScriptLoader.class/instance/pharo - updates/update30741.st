update30741
	"self new update30741"
	self withUpdateLog: '12765 Athens font rendering missing letters and missizing others
	https://pharo.fogbugz.com/f/cases/12765'.
	self loadTogether: self script394 merge: false.
	self flushCaches.
