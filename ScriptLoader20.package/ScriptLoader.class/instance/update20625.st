pharo - updates
update20625
	"self new update20625"
	self withUpdateLog: '11535 RBBrowserEnvironment packages method is too broad backport
	https://pharo.fogbugz.com/f/cases/11535
	
'.
	self loadTogether: self script598 merge: false.
	self flushCaches.
