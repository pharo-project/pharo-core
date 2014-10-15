update40307
	"self new update40307"
	self withUpdateLog: '14177 Add properties to classes
	https://pharo.fogbugz.com/f/cases/14177

'.
	self loadTogether: self script307 merge: false.
	Behavior addClassVarNamed: 'ClassProperties'.
Behavior methodsDo: #recompile.
Behavior class methodsDo: #recompile.
Behavior initialize.
TraitBehavior initialize.
	self flushCaches.
self cleanRepositories.
