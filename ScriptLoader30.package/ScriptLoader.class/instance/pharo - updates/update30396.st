update30396
	"self new update30396"
	self withUpdateLog: '11595 clean senders of #halt:
	https://pharo.fogbugz.com/f/cases/11595
	
'.
	self loadTogether: self script188 merge: false.
	self flushCaches.
