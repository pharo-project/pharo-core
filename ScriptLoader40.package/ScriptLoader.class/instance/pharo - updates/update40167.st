update40167
	"self new update40167"
	self withUpdateLog: '13838 Update Zn+Zdc August 2014
	https://pharo.fogbugz.com/f/cases/13838
'.
	self loadTogether: self script167 merge: false.
	self flushCaches.
self cleanRepositories.
