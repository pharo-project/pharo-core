update60030
	"self new update60030"
	self withUpdateLog: '18296 DNU on split cascade refactoring
	https://pharo.fogbugz.com/f/cases/18296

18298 duplicate elements in RBClassEnvironments result set
	https://pharo.fogbugz.com/f/cases/18298

18314 wrong or missing metho protokoll name for WindowAnnouncements
	https://pharo.fogbugz.com/f/cases/18314'.
	self loadTogether: self script60030 merge: false.
	self flushCaches.
