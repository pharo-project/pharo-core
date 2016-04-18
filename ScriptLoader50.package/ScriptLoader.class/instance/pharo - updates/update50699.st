update50699
	"self new update50699"
	self withUpdateLog: '18018 String #copyReplaceAll:with:  Poor performance
	https://pharo.fogbugz.com/f/cases/18018

18014 Make all subscriptions to the SystemAnnouncer weak (for non-GT classes)
	https://pharo.fogbugz.com/f/cases/18014'.
	self loadTogether: self script50699 merge: false.
	self flushCaches.
