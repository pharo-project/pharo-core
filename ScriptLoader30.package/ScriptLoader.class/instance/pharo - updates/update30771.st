update30771
	"self new update30771"
	self withUpdateLog: '12916 Integrate Versionner 2.3
	https://pharo.fogbugz.com/f/cases/12916
	
12882 MTDependantProject uses an Array instead of OrderedCollection for #repositories
	https://pharo.fogbugz.com/f/cases/12882
	
12878 Versionner: Filter Test Configurations
	https://pharo.fogbugz.com/f/cases/12878
	
12852 Versionner should use more consistent icon style for configs
	https://pharo.fogbugz.com/f/cases/12852'.
	self loadTogether: self script424 merge: false.
	ScriptLoader new addHomeRepositoryToAllPackages.
	self flushCaches.
