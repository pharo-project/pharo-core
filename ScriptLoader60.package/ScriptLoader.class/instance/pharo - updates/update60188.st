update60188
	"self new update60188"
	self withUpdateLog: '18158 MessageSend should not care about obsolete classes
	https://pharo.fogbugz.com/f/cases/18158'.
	self loadTogether: self script60188 merge: false.
	self flushCaches.
