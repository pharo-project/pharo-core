update60155
	"self new update60155"
	self withUpdateLog: '18734 Two tests failing in FFIExternalStructureTests
	https://pharo.fogbugz.com/f/cases/18734

18807 Improve Margin>>#printOn:
	https://pharo.fogbugz.com/f/cases/18807

18741 add RadioButtonGroupModel
	https://pharo.fogbugz.com/f/cases/18741

18775 Fix a typo
	https://pharo.fogbugz.com/f/cases/18775'.
	self loadTogether: self script60155 merge: false.
	self loadConfiguration: 'UnifiedFFI' version: '0.22.2'.self flushCaches.
