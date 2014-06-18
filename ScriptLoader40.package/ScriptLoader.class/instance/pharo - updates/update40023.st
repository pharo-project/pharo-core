update40023
	"self new update40023"
	self withUpdateLog: '13332 fix #cleanUpForProduction for 4
	https://pharo.fogbugz.com/f/cases/13332

13336 FontChooser and FontInfrastructure do not have the 40 repository added to themselves.
	https://pharo.fogbugz.com/f/cases/13336'.
	self loadTogether: self script23 merge: false.
	ScriptLoader new addHomeRepositoryToAllPackages.
	self flushCaches.
