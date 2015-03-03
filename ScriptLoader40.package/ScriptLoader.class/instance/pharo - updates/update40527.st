update40527
	"self new update40527"
	self withUpdateLog: '14956 Properties on Behaviour: "self properties" creates empty dict for keys
	https://pharo.fogbugz.com/f/cases/14956

15035 allSlotsEverywhere
	https://pharo.fogbugz.com/f/cases/15035

15031 #cleanUpForProduction does not need to reset MCVersionInfo instances
	https://pharo.fogbugz.com/f/cases/15031'.
	self loadTogether: self script527 merge: false.
	
Smalltalk allClassesAndTraits do: #removePropertiesIfEmpty.
	self flushCaches.
