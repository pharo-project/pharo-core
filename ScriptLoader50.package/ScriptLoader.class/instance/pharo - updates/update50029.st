update50029
	"self new update50029"
	
NativeBoost clearNativeCode.
	self withUpdateLog: '15334 Closing tabs with ctrl+w shortcut sometimes throws error
	https://pharo.fogbugz.com/f/cases/15334

15479 Condition Reification
	https://pharo.fogbugz.com/f/cases/15479

14479 Enable nil to NULL coercion for NBExternalObjectType
	https://pharo.fogbugz.com/f/cases/14479'.
	self loadTogether: self script638 merge: false.
	
NativeBoost clearNativeCode.
	self flushCaches.
