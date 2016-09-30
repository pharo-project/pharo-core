update60246
	"self new update60246"
	self withUpdateLog: '19162 fix a deprecated send in SettingNode
	https://pharo.fogbugz.com/f/cases/19162

19130 Deprecation: The method Object>>name in Slot
	https://pharo.fogbugz.com/f/cases/19130'.
	self loadTogether: self script60246 merge: false.
	self flushCaches.
