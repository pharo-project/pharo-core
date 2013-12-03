update30616
	"self new update30616"
	self withUpdateLog: '12289 Komitter has improper repositories assigned
	https://pharo.fogbugz.com/f/cases/12289
	
12311 Cleanup on some Tools related methods
	https://pharo.fogbugz.com/f/cases/12311
	
12323 TreeModel example broken
	https://pharo.fogbugz.com/f/cases/12323
	
12285 Critics browser broken
	https://pharo.fogbugz.com/f/cases/12285
	
12313 Few enhancements in TreeModel and TreeNodeModel	
	https://pharo.fogbugz.com/f/cases/12313'.
	self loadTogether: self script271 merge: false.
	ScriptLoader new addHomeRepositoryToAllPackages.
	self flushCaches.
