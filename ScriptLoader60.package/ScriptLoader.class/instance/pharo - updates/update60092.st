update60092
	"self new update60092"
	self withUpdateLog: '18509 per send-site #haltOnCount:
	https://pharo.fogbugz.com/f/cases/18509'.
	self loadTogether: self script60092 merge: false.
	self flushCaches.
