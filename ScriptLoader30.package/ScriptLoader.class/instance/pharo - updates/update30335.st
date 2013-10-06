update30335
	"self new update30335"
	self withUpdateLog: '- issue 11415 More green tests for BehaviorTest and MetaclassTest
	https://pharo.fogbugz.com/default.asp?11415
	
- issue 11406 Cleaning categories: Object
	https://pharo.fogbugz.com/default.asp?11406
	
- issue 11251 Add coherent icons set for up/down/top/bottom actions
	https://pharo.fogbugz.com/default.asp?11251	'.
	self loadTogether: self script127 merge: false.
	ThemeIcons initialize.
	self flushCaches.
