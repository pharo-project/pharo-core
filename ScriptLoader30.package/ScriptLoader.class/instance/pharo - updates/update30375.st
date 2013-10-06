update30375
	"self new update30375"
	self withUpdateLog: '11534 ColorTest is failing
	https://pharo.fogbugz.com/f/cases/11534'.
	self loadTogether: self script167 merge: false.
	self flushCaches.
