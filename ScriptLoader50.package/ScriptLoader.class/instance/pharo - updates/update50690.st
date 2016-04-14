update50690
	"self new update50690"
	self withUpdateLog: '18003 multiple usage in the weak subscriptions to the local announcers in the system
	https://pharo.fogbugz.com/f/cases/18003'.
	self loadTogether: self script50690 merge: false.
	self flushCaches.
