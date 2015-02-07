update40480
	"self new update40480"
	self withUpdateLog: '14882 Slots: add mechanism for initializing slots
	https://pharo.fogbugz.com/f/cases/14882'.
	self loadTogether: self script480 merge: false.
	self flushCaches.
