update50598
	"self new update50598"
	self withUpdateLog: '17650 testModulePrimitive: fix test for new byte codes
	https://pharo.fogbugz.com/f/cases/17650

17629 OCContextTempMappingTest tests fails on Spur Images
	https://pharo.fogbugz.com/f/cases/17629

17015 Failing test: SetTest>>#testAllSetsAreHealthy
	https://pharo.fogbugz.com/f/cases/17015'.
	self loadTogether: self script50598 merge: false.
	
OCContextTempMappingTest recompile.
Symbol initSelectorTable.
	self flushCaches.
