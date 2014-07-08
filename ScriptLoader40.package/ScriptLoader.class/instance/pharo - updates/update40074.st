update40074
	"self new update40074"
	self withUpdateLog: '13506 Move some Settings-Polymorph to the class 
	https://pharo.fogbugz.com/f/cases/13506

13505 Small Morph clean: SimpleSwitch is not used, move Lazy*List to the sole user: PluggableList
	https://pharo.fogbugz.com/f/cases/13505

13504 MorphListItemWrapper is dead code
	https://pharo.fogbugz.com/f/cases/13504

'.
	self loadTogether: self script74 merge: false.
	self flushCaches.
self cleanRepositories.
