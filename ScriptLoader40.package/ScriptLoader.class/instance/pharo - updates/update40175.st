update40175
	"self new update40175"
	self withUpdateLog: '13877 Clean up Settings related to Code Browsing
	https://pharo.fogbugz.com/f/cases/13877

13855 Small critique cleanup of Tool-Base
	https://pharo.fogbugz.com/f/cases/13855

13871 GroupWindowMorph : empty package associated with a fix
	https://pharo.fogbugz.com/f/cases/13871'.
	self loadTogether: self script175 merge: false.
	ScriptLoader new deletePackage: 'GroupWindowMorph-defaultColor.st'.
	self flushCaches.
self cleanRepositories.
