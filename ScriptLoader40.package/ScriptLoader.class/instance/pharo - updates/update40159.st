update40159
	"self new update40159"
	self withUpdateLog: '13775 Move two methods from SystemNavigation to AbstractTool
	https://pharo.fogbugz.com/f/cases/13775

'.
	self loadTogether: self script159 merge: false.
	self flushCaches.
self cleanRepositories.
