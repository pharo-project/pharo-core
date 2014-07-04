update40062
	"self new update40062"
	self withUpdateLog: '13465 API for getting globals from class 
	https://pharo.fogbugz.com/f/cases/13465

13464 Small code critique cleanup in Files
	https://pharo.fogbugz.com/f/cases/13464

7321 Consolidate order preserving dictionaries
	https://pharo.fogbugz.com/f/cases/7321
	
13462 remove package FuelHacks
	https://pharo.fogbugz.com/f/cases/13462

'.
	self loadTogether: self script62 merge: false.
	ScriptLoader new deletePackage: 'FuelHacks'.
	self flushCaches.
