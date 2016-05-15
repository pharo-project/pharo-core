update60005
	"self new update60005"
	self withUpdateLog: '18173 fix #allClasses for RBBrowserEnvironments
	https://pharo.fogbugz.com/f/cases/18173'.
	self loadTogether: self script60005 merge: false.
	self flushCaches.
