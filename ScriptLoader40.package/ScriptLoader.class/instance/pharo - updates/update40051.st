update40051
	"self new update40051"
	self withUpdateLog: '13428 Small code critique cleanup of RecentSubmissions
	https://pharo.fogbugz.com/f/cases/13428

13427 Small code critique clean of Tools
	https://pharo.fogbugz.com/f/cases/13427

'.
	self loadTogether: self script51 merge: false.
	self flushCaches.
