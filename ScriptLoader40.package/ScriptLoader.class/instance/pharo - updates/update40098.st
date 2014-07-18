update40098
	"self new update40098"
	self withUpdateLog: '13574 ModelOrNil has only one sender so we should rewrite it and remove it.
	https://pharo.fogbugz.com/f/cases/13574

13578 safer RPackageOrganizer>>systemMethodRemovedActionFrom:
	https://pharo.fogbugz.com/f/cases/13578

13585 use term Class Variable, not Shared Variablem in ClassModification 
	https://pharo.fogbugz.com/f/cases/13585

'.
	self loadTogether: self script98 merge: false.
	self flushCaches.
self cleanRepositories.
