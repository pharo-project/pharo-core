update50646
	"self new update50646"
	self withUpdateLog: '17825 SlotSilentTest should also silence Author during tests
	https://pharo.fogbugz.com/f/cases/17825

17797 random crash while trying to dispose a NULL handle
	https://pharo.fogbugz.com/f/cases/17797'.
	self loadTogether: self script50646 merge: false.
	self flushCaches.
