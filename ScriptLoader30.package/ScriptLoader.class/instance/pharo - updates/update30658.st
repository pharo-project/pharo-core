update30658
	"self new update30658"
	self withUpdateLog: '12278 Changesorter menus are broken
	https://pharo.fogbugz.com/f/cases/12278
	
12418 Athens tutorial should be updated to work with spec 3.0 for 3.0
	https://pharo.fogbugz.com/f/cases/12418'.
	self loadTogether: self script311 merge: false.
	ScriptLoader new addHomeRepositoryToAllPackages.
	self flushCaches.
