update60292
	"self new update60292"
	self withUpdateLog: '19333 17 more tests failing due to MockSettings class(Object)>>doesNotUnderstand: #mocksystemsettings SettingTreeBuilder>>mocksystemse
	https://pharo.fogbugz.com/f/cases/19333'.
	self loadTogether: self script60292 merge: false.
	self flushCaches.
