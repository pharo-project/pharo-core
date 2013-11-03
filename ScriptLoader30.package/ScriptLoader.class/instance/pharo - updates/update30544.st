update30544
	"self new update30544"
	self withUpdateLog: '12061 SettingBrowser>>exportSettings need refactoring
	https://pharo.fogbugz.com/f/cases/12061

11920 NewValueHolder should use value instead of contents
	https://pharo.fogbugz.com/f/cases/11920
	
11819 TextModel>>#codePaneMenu:shifted: should work with a value holder
	https://pharo.fogbugz.com/f/cases/11819
	
'.
	self loadTogether: self script199 merge: false.
	self flushCaches.
