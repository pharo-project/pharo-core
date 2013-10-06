update30436
	"self new update30436"
	self withUpdateLog: '11732 add NonInteractiveTranscript to kernel packages
	https://pharo.fogbugz.com/f/cases/11732
'.
	self loadTogether: self script115 merge: false.
	self flushCaches.
