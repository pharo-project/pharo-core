update60002
	"self new update60002"
	self withUpdateLog: '18148 NEC should guess global variables
	https://pharo.fogbugz.com/f/cases/18148'.
	self loadTogether: self script60002 merge: false.
	self flushCaches.
