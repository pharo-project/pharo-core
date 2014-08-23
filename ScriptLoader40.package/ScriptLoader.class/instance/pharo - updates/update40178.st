update40178
	"self new update40178"
	SystemVersion current 
	unregisterUpdate: SystemVersion current highestUpdate;
	resetHighestUpdate.
	self withUpdateLog: '13885 Integration report is not showing the changes integrated
	https://pharo.fogbugz.com/f/cases/13885
'.
	self loadTogether: self script178 merge: false.
	self flushCaches.
self cleanRepositories.
