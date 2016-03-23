update50658
	"self new update50658"
	self withUpdateLog: '17859 testModulePrimitive should use mock instead of real class
	https://pharo.fogbugz.com/f/cases/17859

17866 add support for HANDLE types (windows)
	https://pharo.fogbugz.com/f/cases/17866

17861 ArrayTest should not use Color
	https://pharo.fogbugz.com/f/cases/17861'.
	self loadTogether: self script50658 merge: false.
	self loadConfiguration: 'UnifiedFFI' version: '0.17'.self flushCaches.
