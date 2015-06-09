update50098
	"self new update50098"
	self withUpdateLog: '15719 Remove ChangeList
	https://pharo.fogbugz.com/f/cases/15719

14013 no package information for class side trait methods
	https://pharo.fogbugz.com/f/cases/14013

15197 remove unnecessary menu item in MC
	https://pharo.fogbugz.com/f/cases/15197'.
	self loadTogether: self script50098 merge: false.
	
ScriptLoader new unloadPackageNamed: 'Tool-Changes'.
	self flushCaches.
