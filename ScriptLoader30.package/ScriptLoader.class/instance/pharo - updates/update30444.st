update30444
	"self new update30444"
	self withUpdateLog: '11762 update #cleanUpForProduction
	https://pharo.fogbugz.com/f/cases/11762
	
11764 unload Refactoring-Spelling
	https://pharo.fogbugz.com/f/cases/11764
	
11763 clean up Refactoring-Critics-Unused	
	https://pharo.fogbugz.com/f/cases/11763
	
11761 class StrikeFontFixer is undocumented and the only users not called	
	https://pharo.fogbugz.com/f/cases/11761'.
	self loadTogether: self script123 merge: false.
	ScriptLoader new unloadPackageNamed: 'Refactoring-Spelling'.
	self flushCaches.
