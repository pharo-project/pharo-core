update40102
	"self new update40102"
	self withUpdateLog: '13594 Reduce references to CodeHolder
	https://pharo.fogbugz.com/f/cases/13594

13597 Implement #readsSlot and #writesSlot on CompiledMethod (and tests)
	https://pharo.fogbugz.com/f/cases/13597

13595 PluggableSystemWindow is dead code
	https://pharo.fogbugz.com/f/cases/13595
	
13596 remove package TT.cs
	https://pharo.fogbugz.com/f/cases/13596

'.
	self loadTogether: self script102 merge: false.
	ScriptLoader new deletePackage:  'TT.cs'.
	self flushCaches.
self cleanRepositories.
