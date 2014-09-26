update40261
	"self new update40261"
	self withUpdateLog: '14085 Image blocked when halt placed on setUp method and running a whole TestCase from Nautilus
	https://pharo.fogbugz.com/f/cases/14085

13606 testSlotScopeParallelism is failing
	https://pharo.fogbugz.com/f/cases/13606'.
	self loadTogether: self scriptnil merge: false.
	
ClassHierarchyTest fixSlotScope.
	self flushCaches.
