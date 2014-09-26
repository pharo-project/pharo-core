update40262
	"self new update40262"
	self withUpdateLog: '13606 testSlotScopeParallelism is failing
	https://pharo.fogbugz.com/f/cases/13606

14085 Image blocked when halt placed on setUp method and running a whole TestCase from Nautilus
	https://pharo.fogbugz.com/f/cases/14085'.
	self loadTogether: self script262 merge: false.
	
ClassHierarchyTest fixSlotScope.
	self flushCaches.
