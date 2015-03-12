update40553
	"self new update40553"
	self withUpdateLog: '15070 failing test ClassHierarchyTest
	https://pharo.fogbugz.com/f/cases/15070

15060 testSlotScopeParallelism is failing
	https://pharo.fogbugz.com/f/cases/15060

15118 remove #gtInspectorSymbolicBytecodeIn: from CompiledMethod
	https://pharo.fogbugz.com/f/cases/15118'.
	self loadTogether: self script553 merge: false.
	
ClassHierarchyTest fixSubclasses .
ClassHierarchyTest fixSlotScope.
	self flushCaches.
